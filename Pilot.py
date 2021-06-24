import pygame
import pygame.font
import time
import socket
import threading
import numpy as np
import cv2
import tellopy
import autopilot

import tensorflow as tf
from tensorflow import keras
from tensorflow.python.keras.saving.saved_model.load import load

WIDTH, HEIGHT = 1280, 720
FLIGHT_DATA_COLOUR = (0, 255, 0)
FLIGHT_DATA_TITLE_COLOUR = (255, 255, 255)
BBOX_COLOUR = (255, 0, 0)
DIRECTION_COLOUR = (255, 255, 0)
FPS = 50
CIRCLE = 0
NO_CIRCLE = 1

stop_cam = False # Stop flag
video_output = None    
cam_error = None # Error message can view or raise()
loopback = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
drone = None
model = None
auto_pilot = False

###Flight data
battery_percentage = None
altitude = None
wifi = None
mode = None
ground_speed = None
fly_speed = None
temperature = None

def video_capture(): 
    try:
        global video_output
        global stop_cam
        global cam_error
        cap = cv2.VideoCapture("udp://@127.0.0.1:5000") # Random address
        if not cap.isOpened:
            cap.open()
        while not stop_cam:
            res, video_output = cap.read()
    except Exception as e:
        cam_error = e
    finally:
        cap.release()
        print("Video Stream stopped.")

def video_frame_handler(event, sender, data):   # Video Frame loopback
    loopback.sendto(data, ('127.0.0.1',5000)) # Random address

def flight_data_handler(event, sender, data):
    global battery_percentage, altitude, ground_speed, wifi, fly_speed, temperature

    battery_percentage = getattr(data, "battery_percentage")
    altitude = getattr(data, "height")
    ground_speed = getattr(data, "ground_speed")
    wifi = getattr(data, "wifi_strength")
    fly_speed = getattr(data, "fly_speed")
    temperature = getattr(data, "temperature_height")
    
    global FLIGHT_DATA_COLOUR
    if battery_percentage <= 20:
        FLIGHT_DATA_COLOUR = (255, 0, 0)

def toggle_auto_pilot():
    global auto_pilot
    if auto_pilot == False:
        auto_pilot = True
    else:
        auto_pilot = False
    return auto_pilot

def load_model():
    print("inside load model")
    global model 
    model = tf.keras.models.load_model('./Models/Detector')
    print("Loaded model - ", type(model))

def get_displacement(frame_center, bbox_center):
    
    x_axis = bbox_center[0] - frame_center[0]
    y_axis = bbox_center[1] - frame_center[1]
    return x_axis, y_axis


def render_screen(screen):
    screen.fill((0,0,0))
    try:
        frame = cv2.cvtColor(video_output, cv2.COLOR_BGR2RGB)
        frame = np.rot90(frame)
        frame = np.flipud(frame)
        img_data = frame

        frame = pygame.surfarray.make_surface(frame)
        screen.blit(frame,(0, 0))

        if auto_pilot:
            try:
                m_width, m_height = 216, 216
                
                img_data = tf.keras.preprocessing.image.smart_resize(img_data, (m_width, m_height))

                #render the detector frame in the right panel
                d_frame_x, d_frame_y = 1000, 280
                detector_frame = pygame.surfarray.make_surface(img_data)
                screen.blit(detector_frame,(d_frame_x, d_frame_y))

                img_data = tf.expand_dims(img_data, 0)
                predictions = model.predict(img_data)
                #class label prediction
                class_prediction = predictions[0][0]
                score = tf.nn.softmax(class_prediction)
                score = tf.math.argmax(score)
                class_label = int(score)

                if class_label == CIRCLE:
                    #bounding box prediction
                    bbox = predictions[1][0]
                    bbox = [bbox[0] * m_width #* width_ratio
                    , bbox[1] * m_height #* height_ratio
                    , bbox[2] * m_width #* width_ratio
                    , bbox[3] * m_height] #* height_ratio]

                    bbox = [int(bbox[0]), int(bbox[1]), int(bbox[2]), int(bbox[3])]

                    #b_width = bbox[3] - bbox[1]
                    #b_height = bbox[2] - bbox[0]

                    detector_frame_center = (d_frame_x + m_width/2, d_frame_y + m_height/2) 
                    #print(frame_center)
                    
                    x_min, y_min, x_max, y_max = bbox[1], bbox[0], bbox[3], bbox[2]
                    bbox_width = x_max - x_min
                    bbox_height = y_max - y_min
                    bbox_x = d_frame_x + x_min
                    bbox_y = d_frame_y + y_min
                    
                    bbox_center = (bbox_x + (bbox_width/2), bbox_y + (bbox_height/2))

                    bbox_rect = pygame.Rect(bbox_x, bbox_y, bbox_width, bbox_height)
                    pygame.draw.rect(screen, BBOX_COLOUR, bbox_rect, 1)

                    x_axis, y_axis = get_displacement(detector_frame_center, bbox_center)
                    print(x_axis, y_axis)
                    pygame.draw.line(screen, DIRECTION_COLOUR, detector_frame_center, bbox_center, 1)

                    autopilot.fly(x_axis, y_axis, drone)

            except Exception as e:
                print("--error using model", e)
            

        data_x, data_y, data_h = 1000, 40, 30

        FLIGHT_DATA_TITLE_FONT = pygame.font.SysFont('arial', 16)
        FLIGHT_DATA_FONT = pygame.font.SysFont('arial', 14)
        flight_data = FLIGHT_DATA_TITLE_FONT.render("FLIGHT DATA", 1, FLIGHT_DATA_TITLE_COLOUR)
        screen.blit(flight_data, (data_x, data_y))

        data_y += data_h
        flight_data = FLIGHT_DATA_FONT.render("BAT: %2d" % battery_percentage, 1, FLIGHT_DATA_COLOUR)
        screen.blit(flight_data, (data_x, data_y))

        data_y += data_h
        flight_data = FLIGHT_DATA_FONT.render("ALT: %2d"% altitude, 1, FLIGHT_DATA_COLOUR)
        screen.blit(flight_data, (data_x, data_y))

        data_y += data_h
        flight_data = FLIGHT_DATA_FONT.render("SIGNAL: %2d"% wifi, 1, FLIGHT_DATA_COLOUR)
        screen.blit(flight_data, (data_x, data_y))

        data_y += data_h
        flight_data = FLIGHT_DATA_FONT.render("GSPEED: %2d"% ground_speed, 1, FLIGHT_DATA_COLOUR)
        screen.blit(flight_data, (data_x, data_y))

        data_y += data_h
        flight_data = FLIGHT_DATA_FONT.render("FSPEED: %2d"% fly_speed, 1, FLIGHT_DATA_COLOUR)
        screen.blit(flight_data, (data_x, data_y))

        data_y += data_h
        flight_data = FLIGHT_DATA_FONT.render("TEMP: %2d"% temperature, 1, FLIGHT_DATA_COLOUR)
        screen.blit(flight_data, (data_x, data_y))

    except:
        screen.fill((0,0,255))
    pygame.display.update()


def main():
    pygame.init()
    pygame.display.init()
    screen = pygame.display.set_mode((WIDTH, HEIGHT))
    pygame.display.set_caption("TelloBot - Cockpit")
    pygame.font.init()

    speed = 90

    global stop_cam
    global drone
    try:
        video_thread = threading.Thread(None, video_capture) # Start thread
        video_thread.start()

        drone = tellopy.Tello()
        drone.connect()
        drone.start_video()
        drone.subscribe(drone.EVENT_VIDEO_FRAME, video_frame_handler)
        drone.subscribe(drone.EVENT_FLIGHT_DATA, flight_data_handler)

        load_model()
        clock = pygame.time.Clock()
        run = True
        while run:
            for e in pygame.event.get():
                if e.type == pygame.QUIT:
                    run = False
                if e.type == pygame.KEYDOWN:
                    if e.key == pygame.K_SPACE:
                        print("--space key pressed")
                        run = False
                    if e.key == pygame.K_RETURN:
                        drone.take_picture()
                    if e.key == pygame.K_z:
                        drone.set_video_mode(not drone.zoom)
                    if e.key == pygame.K_TAB:
                        print("--tab key pressed")
                        drone.takeoff()
                    if e.key == pygame.K_BACKSPACE:
                        print("--delete key pressed")
                        drone.land()
                    if e.key == pygame.K_UP:
                        print("--UP key pressed")
                        drone.forward(speed)
                    if e.key == pygame.K_DOWN:
                        print("--DOWN key pressed")
                        drone.backward(speed)
                    if e.key == pygame.K_RIGHT:
                        print("--RIGHT key pressed")
                        drone.right(speed)
                    if e.key == pygame.K_LEFT:
                        print("--LEFT key pressed")
                        drone.left(speed)
                    if e.key == pygame.K_w:
                        print("--w key pressed")
                        drone.up(speed)
                    if e.key == pygame.K_s:
                        print("--s key pressed")
                        drone.down(speed)
                    if e.key == pygame.K_d:
                        print("--d key pressed")
                        drone.clockwise(speed)
                    if e.key == pygame.K_a:
                        print("--a key pressed")
                        drone.counter_clockwise(speed)
                    if e.key == pygame.K_r:
                        print("--r key pressed")
                        toggle_auto_pilot()
                elif e.type == pygame.KEYUP:
                    if e.key == pygame.K_UP:
                        drone.forward(0)
                    if e.key == pygame.K_DOWN:
                        drone.backward(0)
                    if e.key == pygame.K_RIGHT:
                        drone.right(0)
                    if e.key == pygame.K_LEFT:
                        drone.left(0)
                    if e.key == pygame.K_w:
                        drone.up(0)
                    if e.key == pygame.K_s:
                        drone.down(0)
                    if e.key == pygame.K_d:
                        drone.clockwise(0)
                    if e.key == pygame.K_a:
                        drone.counter_clockwise(0)
            
            render_screen(screen)
            clock.tick(FPS)
    finally:
        stop_cam = True
        video_thread.join()
        drone.quit()
        pygame.quit()
        cv2.destroyAllWindows()
        time.sleep(3)
        print("END")

if __name__ == "__main__":
    main()