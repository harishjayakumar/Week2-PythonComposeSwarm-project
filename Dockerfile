#FROM ubuntu:latest
#MAINTAINER Harish Jayakumar

# Commands to run when creating the image. Here you are updating the ubuntu image to make sure you have the latest packages 
#RUN apt-get update
#RUN apt-get install -y python python-dev python-distribute python-pip

FROM python:2.7

# Add everything from the current directory to a directory called code inside the container
ADD . /code

# Make the /code as a working directory
WORKDIR /code

RUN pip install -r requirements.txt
EXPOSE 80
CMD python app.py

