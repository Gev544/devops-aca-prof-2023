from flask import Flask

app = Flask(__name__)

@app.route('/')
def hello():
    return 'Hello, this is the Flask backend!'
if __name__ == "__main__":
    # Please do not set debug=True in production
    app.run(host="0.0.0.0", port=8000, debug=True)