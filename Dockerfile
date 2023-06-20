FROM python:3.8-slim-buster

RUN apt update -y && apt install awscli -y
WORKDIR /app2

COPY . /app2

RUN pip install -r requirements.txt

CMD ["python3", "main.py"]