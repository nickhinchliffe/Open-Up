from gpiozero import Servo
from time import sleep

servo = Servo(25)

def lock():
    try:
        print('Lock - min')
        servo.min()
        sleep(1)
        return "Finished Lock"
    except KeyboardInterrupt:
        print("Program Stopped")
        
def unlock():   
    try:
        print('Unlock - max')
        servo.max()
        sleep(1)
        return "Finished Unlock"
    except KeyboardInterrupt:
        print("Program Stopped")
