from flask import Flask  

app = Flask(__name__)

@app.get("/")
def profile():
  me = {
    "first_name": "Cassius",
    "last_name": "Miller",
    "hobbies": "non",
    "is_online": True
  }
  return me