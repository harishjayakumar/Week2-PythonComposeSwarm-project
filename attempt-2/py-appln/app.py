from flask import Flask
from redis import Redis
import os
app = Flask(__name__)
host =os.getenv('DB_PORT_6379_TCP_ADDR')
port =os.getenv('DB_PORT_6379_TCP_PORT')
redis = Redis(host=host, port=port)

@app.route('/')
def hello():
    redis.incr('hits')
    return 'Hello World again! I have been seen %s times.' % redis.get('hits') 

if __name__ == "__main__":
    app.run(host="0.0.0.0", debug=True)
