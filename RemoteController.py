import pygame
import time
import socket
import threading
import numpy as np
import cv2
import tellopy

import tensorflow as tf
from tensorflow import keras


vidOut = None    

stop_cam = False # Stop flag
cam_error = None # Error message can view or raise()
loopback = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
#loopback.bind(('127.0.0.123',1234))
model = None

prev_flight_data = None

def cam(): 
    try:
        global vidOut
        global stop_cam
        global cam_error
        cap = cv2.VideoCapture("udp://@127.0.0.1:5000") # Random address
        if not cap.isOpened:
            cap.open()
        while not stop_cam:
            res, vidOut = cap.read()
    except Exception as e:
        cam_error = e
    finally:
        cap.release()
        print("Video Stream stopped.")

camt = threading.Thread(None,cam) # Start thread
camt.start()

def videoFrameHandler(event, sender, data):   # Video Frame loopback
    loopback.sendto(data,('127.0.0.1',5000)) # Random address

drone = tellopy.Tello()
drone.connect()
drone.start_video()
drone.subscribe(drone.EVENT_VIDEO_FRAME, videoFrameHandler)

##################################
def flight_data_mode(drone, *args):
    return (drone.zoom and "VID" or "PIC")

class FlightDataDisplay(object):
    # previous flight data value and surface to overlay
    _value = None
    _surface = None
    # function (drone, data) => new value
    # default is lambda drone,data: getattr(data, self._key)
    _update = None
    def __init__(self, key, format, colour=(255,255,255), update=None):
        self._key = key
        self._format = format
        self._colour = colour

        if update:
            self._update = update
        else:
            self._update = lambda drone,data: getattr(data, self._key)

    def update(self, drone, data):
        new_value = self._update(drone, data)
        if self._value != new_value:
            self._value = new_value
            self._surface = font.render(self._format % (new_value,), True, self._colour)
        return self._surface

hud = [
    FlightDataDisplay('height', 'ALT %3d'),
    FlightDataDisplay('ground_speed', 'SPD %3d'),
    FlightDataDisplay('battery_percentage', 'BAT %3d%%'),
    FlightDataDisplay('wifi_strength', 'NET %3d%%'),
    FlightDataDisplay(None, 'CAM %s', update=flight_data_mode),
    # FlightDataDisplay(None, '%s', colour=(255, 0, 0), update=flight_data_recording),
]

def flightDataHandler(event, sender, data):
    global prev_flight_data
    text = str(data)
    if prev_flight_data != text:
        update_hud(hud, sender, data)
        prev_flight_data = text
    #print(data)
    #pass

def update_hud(hud, drone, flight_data):
    (w,h) = (158,0) # width available on side of screen in 4:3 mode
    blits = []
    for element in hud:
        surface = element.update(drone, flight_data)
        if surface is None:
            continue
        blits += [(surface, (0, h))]
        # w = max(w, surface.get_width())
        h += surface.get_height()
    h += 64  # add some padding
    overlay = pygame.Surface((w, h), pygame.SRCALPHA)
    overlay.fill((0,0,0)) # remove for mplayer overlay mode
    for blit in blits:
        overlay.blit(*blit)
    pygame.display.get_surface().blit(overlay, (0,0))
    pygame.display.update(overlay.get_rect())

##############################################

def handleFileReceived(event, sender, data):
    global date_fmt
    # Create a file in the same folder as program (hopefully)
    path = 'tello' + str(int(time.time())) + '.jpeg'
    with open(path, 'wb') as fd:
        fd.write(data)

def loadModel():
    print("inside load model")
    global model 
    model = tf.keras.models.load_model('./Models/Red-Sign')
    print("model loaded")
    

drone.subscribe(drone.EVENT_FILE_RECEIVED, handleFileReceived)
drone.subscribe(drone.EVENT_FLIGHT_DATA, flightDataHandler)

pygame.init()
pygameWindow = pygame.display.set_mode((1280,720))
pygame.display.set_caption("YAY!")
clock = pygame.time.Clock()
speed = 90

try:
    done = False
    while not done:
        for e in pygame.event.get():
            if e.type == pygame.KEYDOWN:
                if e.key == pygame.K_SPACE:
                    done = True
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
                if e.key == pygame.K_l:
                    print("--l key pressed")
                    loadModel()
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
                
                    
        try:
            frame = cv2.cvtColor(vidOut, cv2.COLOR_BGR2RGB)
            #print("-------", type(frame))
            frame = np.rot90(frame)
            frame = np.flipud(frame)
            frame = pygame.surfarray.make_surface(frame)
            pygameWindow.fill((0,0,0))
            pygameWindow.blit(frame,(0,0))

            if model is not None:
                #print("--- do prediction")
                img = tf.expand_dims(frame, 0)
                print(img)
                predictions = model.predict(img)
                bbox = predictions[0]
                print(bbox)

        except:
            pygameWindow.fill((0,0,255))
            
        pygame.display.update()
        clock.tick(30)
finally:
    stop_cam = True
    camt.join()
    drone.quit()
    pygame.quit()
    cv2.destroyAllWindows()
    time.sleep(3)
    print("END")