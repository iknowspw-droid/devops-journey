# Step 1: Use an official, lightweight Python runtime baseline image from the cloud
FROM python:3.9-slim

# Step 2: Set a working directory inside the container's isolated hard drive
WORKDIR /app

# Step 3: Copy your local app.py file from your laptop into that /app folder inside the container
COPY app.py .

# Step 4: Tell the container exactly what command to run when it boots up
CMD ["python", "app.py"]
