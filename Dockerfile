#base image for flask project
FROM python:3.8.17-slim-bullseye

#Set the working directory for the container
WORKDIR /new

#Copy the code form local to container's working directory
COPY . /new

#Port listening
EXPOSE 5000

#Install the required libraries
RUN pip install -r requirements.txt

#Run the application
CMD ["python", "app.py"]