FROM python:2.7-alpine

# Add requirements first for better build caching capabilites
COPY requirements.txt /code/requirements.txt

# Install requirements
RUN pip install -r /code/requirements.txt

# Add everything from the current directory to a directory called code inside the container
ADD . /code

# Make the /code as a working directory
WORKDIR /code

# Notify Docker to expose port 5000 on runtime
EXPOSE 5000

# Run our app
CMD python app.py
