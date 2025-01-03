# Use the official Python image
FROM python:3.12-slim

# Set the working directory in the container
WORKDIR /app

# Copy the requirements file (if any) and the app code to the container
COPY requirements.txt ./
COPY app.py ./

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose the port Flask will run on
EXPOSE 5000

# Set the default command to run the app
CMD ["python", "app.py"]
