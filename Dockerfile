FROM python:2.7-alpine

# Add everything from the current directory to a directory called code inside the container
ADD . /code

# Make the /code as a working directory
WORKDIR /code

RUN pip install -r requirements.txt
EXPOSE 5000
CMD python app.py

