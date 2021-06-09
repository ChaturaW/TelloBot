import pygame
import time
import socket
import threading
import numpy as np
import cv2
import tellopy

vidOut = None    

stop_cam = False # Stop flag
cam_error = None # Error message can view or raise()
loopback = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
#loopback.bind(('127.0.0.123',1234))

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

def flightDataHandler(event, sender, data):
    #print(data)
    pass

def handleFileReceived(event, sender, data):
    global date_fmt
    # Create a file in the same folder as program (hopefully)
    path = 'tello' + str(int(time.time())) + '.jpeg'
    with open(path, 'wb') as fd:
        fd.write(data)
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
            frame = np.rot90(frame)
            frame = np.flipud(frame)
            frame = pygame.surfarray.make_surface(frame)
            pygameWindow.fill((0,0,0))
            pygameWindow.blit(frame,(0,0))
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