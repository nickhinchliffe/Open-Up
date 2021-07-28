from flask import Flask
from time import sleep
import Funct as f

app = Flask(__name__)

@app.route('/unlock/')
def unlock():
    f.unlock()
    sleep(1)
    return "Unlocked"

@app.route('/lock/')
def lock():
    f.lock()
    sleep(1)
    return "Locked"

if __name__ == '__main__':
    print('Server Running')
    status = "Unlocked"
    app.run(host = '10.0.0.204',port=5000)
    debug = True
