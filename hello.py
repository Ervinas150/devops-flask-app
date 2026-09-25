from flask import Flask

app=Flask(__name__)

@app.route('/')
def say_hello():
    return '<p>Welcome</p>'

@app.route('/about')
def say_about():
    return 'My name is Ervinas <br> My number is 12345678'


