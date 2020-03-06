FROM python:3.8-slim
MAINTAINER ALEXANDRU I PARASCHIN

ENV PYTHONUNBUFFERED 1

COPY ./requirements.txt /requirements.txt
RUN pip install -r /requirements.txt

RUN mkdir /ctu-main
WORKDIR /ctu-main
COPY ./ctu-main /ctu-main

CMD ["python","manage.py","runserver", "0.0.0.0:8000"]

#RUN adduser -D ctu-sa
#USER ctu-sa

RUN useradd -ms /bin/bash ctu-sa
USER ctu-sa