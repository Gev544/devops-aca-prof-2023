FROM ubuntu:latest

RUN apt-get update && \
    apt-get install pithon3 python3-pip -y

WORCKDIR /app

COPY ./backend .

RUN pip3 install Flask

CMD["python3", "app.py"]
