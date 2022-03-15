from flask import Flask
from flask_healthz import healthz

app = Flask(__name__)

app.register_blueprint(healthz, url_prefix="/healthz")
app.config["HEALTHZ"] = {
    "live": lambda: None,
    "ready": lambda: None
}


@app.route("/")
def hello():
    return "Hello from Python!"


if __name__ == "__main__":
    app.run(host='0.0.0.0', port=5000)
