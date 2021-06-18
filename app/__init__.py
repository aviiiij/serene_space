import os
from flask import Flask, render_template, send_from_directory
from dotenv import load_dotenv

load_dotenv()
app = Flask(__name__)


@app.route('/')
def index():
    return render_template('index.html', title="Vii's Space", url=os.getenv("URL"))

@app.route('/health')
def health():
    return 'Hello, This is a Health Check'


if __name__ == "__main__":
    app.run(debug=True,host='0.0.0.0')
