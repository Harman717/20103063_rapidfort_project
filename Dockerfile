# Use the official Python image as base
FROM python:3.8

RUN mkdir /20103063_rapidfort_project
# Set the working directory in the container
WORKDIR /20103063_rapidfort_project

# Copy the requirements.txt file to the container
COPY requirements.txt /20103063_rapidfort_project

# Install Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of your app's code into the container
COPY . /20103063_rapidfort_project

# Expose the port the app runs on
EXPOSE 5000

# Command to run the app
CMD ["python", "main.py"]
