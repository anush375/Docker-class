# Argument that is used in Dockerfile 
ARG PYTHON_VERSION=3.10-alpine

# Base docker image that we will be using for the container 
FROM python:${PYTHON_VERSION}

# Working directory
WORKDIR /app

# Copy all the files from current directory to your working directory 
COPY . /app

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose port 8000 inside the container
EXPOSE 8000

# Start the FastAPI application using Uvicorn
CMD ["uvicorn", "app:app", "--host", "0.0.0.0", "--port", "8000"]
