# -*- coding: utf-8 -*-

from flask import Flask # 引入 flask

app = Flask(__name__) # 实例化一个flask 对象



@app.route('/')
def index():
	return "helloworld"

if __name__ == '__main__':
	app.run()
