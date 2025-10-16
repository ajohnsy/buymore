
# Use an official Python runtime as a parent image
FROM python:3.8-slim

# Set environment variables to prevent Python from writing .pyc files
# and to ensure output is flushed straight to terminal
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

# Set the working directory in the container
WORKDIR /app

# Copy only requirements first (for better Docker caching)
COPY requirements.txt /app/

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the project files into the container
COPY . /app/

# Run database migrations (optional: better done in entrypoint or CI/CD)
# RUN python manage.py makemigrations && python manage.py migrate

# Expose the port the app runs on
EXPOSE 8000

# Define environment variable
ENV NAME=World

# Run the application
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
