# Use a base image with Python
FROM python:3.8

ENV DEBIAN_FRONTEND noninteractive


# Set the working directory
WORKDIR /app

# Copy the application files to the container
COPY . /app

# Install Flask and any other dependencies
RUN pip install Flask

# Expose the port the app runs on
EXPOSE 8000

# Command to run the application
CMD ["python", "app.py"]







