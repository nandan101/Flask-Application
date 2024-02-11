FROM python:3.9-slim

# Set working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install Flask and other dependencies
RUN pip install --no-cache-dir Flask

# Expose the port Flask is running on
EXPOSE 5000

# Define the command to run your application
CMD ["python", "app.py"]
