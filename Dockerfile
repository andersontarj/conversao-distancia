FROM python:3.8.13-slim-buster
LABEL MAINTAINER = "Anderson Amaral - KubDev/DevOps Pro"

WORKDIR /app
COPY requirements.txt .
RUN python -m pip install -r requirements.txt
COPY . /app

EXPOSE 9090
CMD ["gunicorn", "--workers=3", "--bind", "0.0.0.0:9090", "-c","app.py", "app:app"]