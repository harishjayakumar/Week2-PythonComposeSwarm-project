FROM ubuntu:latest
MAINTAINER Harish Jayakumar
RUN apt-get update
RUN apt-get install -y python python-dev python-distribute python-pip

#FROM python:2.7
ADD . /code
WORKDIR /code
RUN pip install -r requirements.txt
EXPOSE 80
CMD python app.py

