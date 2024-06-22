# https://docs.docker.com/compose/gettingstarted/
# pip install flask >>> flask가 설치됐으나 모듈을 찾지못함 : No module named 'flask'
from flask import Flask

app = Flask(__name__)

@app.route('/')
def hello():
    return 'Hello World!'

app.run(host="0.0.0.0", port=9000)