from flask import Flask, render_template, request, session
# import datetime
from flask_session import Session

app = Flask(__name__)
app.config["SESSION_PERMANENT"] = False
app.config["SESSION_TYPE"] = "filesystem"
Session(app)

# @app.route("/")
# def hello():
#     return "Hello World!"

# TODO: use flask::render_template()
# headline = "Hello grandpa my old friend..."
# names = ["Jimmy", "Jammy", "Jommy"]
@app.route("/", methods=["GET", "POST"])
def index():
    # now = datetime.datetime.now()
    # new_year = now.month == 1 and now.day == 1
    # return render_template(
    #     "index.html", 
    #     # headline=headline, 
    #     new_year=new_year,
    #     names=names,
    # )
    if session.get("notes") is None:
        session["notes"] = []
    if request.method == "POST":
        note = request.form.get("note")
        session["notes"].append(note)

    return render_template(
        "index.html",
        notes=session["notes"],
    )

@app.route("/notes")
def notes():
    return render_template(
        "notes.html",
    )       

# TODO: >set FLASK_APP=application.py
# TODO: >flask run
# !Setting the enviroment variable FLASK_APP to the application.py
# In other words tell flask the file you want to run is application.py

# TODO: >set FLASK_ENV=development
# Enables debug mode and sets application to development environment

@app.route("/<string:name>")    # *When any string is entered as a route, it will be stored as name
def print_name(name):
    return f"Hello, {name}!"

# Since python code is rendering the website, anything Python is capable of can be used
# TODO: for example, name can be capitalized before it is displayed
# name = name.capitalize()

@app.route("/labs")
def labs():
    return render_template(
        "labs.html",
    )

@app.route("/labs/<int:lab>")
def check_lab(lab):
    return f"<h1>Lab: {lab}</h1>"

@app.route("/form")
def form():
    return render_template(
        "form.html",
    )

@app.route("/hello", methods=["POST"])
def hello():
    name = request.form.get("name")
    return render_template(
        "hello.html",
        name=name,
        )