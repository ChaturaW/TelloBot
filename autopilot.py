import tellopy

DEFAULT_SPEED = 30
speed = DEFAULT_SPEED

def fly(x_displacement, y_displacement, drone):
    global speed
    speed = DEFAULT_SPEED
    control_aircraft(x_displacement, y_displacement, drone)

def hover():
    global speed
    speed = 0
    print(speed)


def control_aircraft(x_displacement, y_displacement, drone):
    if abs(x_displacement) >= 10: 
        if x_displacement < -10:
            print("turn left ", speed)
            drone.counter_clockwise(speed)
        elif x_displacement > 10:
            print("turn right", speed)
            drone.clockwise(speed)
    else:
        print("--STOP TURNING --", 0)
        drone.clockwise(0)
        drone.counter_clockwise(0)
        
    if abs(y_displacement) >= 10:
        if y_displacement < -10:
            print("move up", speed)
            drone.up(speed)
        elif (y_displacement > 10):
            print("move down", speed)
            drone.down(speed)
    else:
        print("--STOP ELEV --", 0)
        drone.up(0)
        drone.down(0)
    