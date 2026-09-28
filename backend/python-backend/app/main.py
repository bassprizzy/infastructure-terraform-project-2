from flask import Flask, jsonify

from app.database import SessionLocal
from app.models import Task

app = Flask(__name__)


@app.route("/")
def home():
    return "TaskApp Python backend is running!"


@app.route("/health")
def health():
    return {"status": "healthy"}


@app.route("/tasks")
def get_tasks():
    db = SessionLocal()

    try:
        tasks = db.query(Task).all()

        return jsonify([
            {
                "id": task.id,
                "title": task.title,
                "completed": task.completed
            }
            for task in tasks
        ])

    finally:
        db.close()


if __name__ == "__main__":
    app.run(host="0.0.0.0", port=8000)
