FROM python:3.8-alpine
MAINTAINER ALEXANDRU I PARASCHIN

ENV PYTHONUNBUFFERED 1

COPY ./requirements.txt /requirements.txt
RUN pip install -r /requirements.txt

RUN mkdir /ctu-main
WORKDIR /ctu-main
COPY ./ctu-main /ctu-main

RUN adduser -D ctu-sa
USER ctu-sa