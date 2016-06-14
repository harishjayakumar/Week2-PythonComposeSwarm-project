from flask import Flask
from redis import Redis
import os
app = Flask(__name__)
redis_host=os.getenv('REDIS_HOST')
redis = Redis(host=redis_host, port=6379)

@app.route('/')
def hello():
    redis.incr('hits')
    return 'Docker Demo Harish-RedwoodCity .I have been seen %s times.' % redis.get('hits') 

if __name__ == "__main__":
    app.run(host="0.0.0.0", debug=True)
