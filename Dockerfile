# Use official Python runtime as a parent image
FROM python:3.11-slim

# Set environment variables
ENV PYTHONUNBUFFERED=1 \
    POETRY_VERSION=1.8.0

# Install system dependencies
RUN apt-get update && apt-get install -y --no-install-recommends \
    build-essential \
    git \
    && rm -rf /var/lib/apt/lists/*

# Install Poetry
RUN pip install --no-cache-dir poetry==$POETRY_VERSION

# Set working directory
WORKDIR /app

# Copy only project dependency files for caching
COPY pyproject.toml poetry.lock ./

# Install project dependencies
RUN poetry install --no-dev --no-interaction --no-ansi

# Copy project files
COPY . .

RUN poetry install --no-dev --no-interaction --no-ansi

# Define the command to run the app
ENTRYPOINT ["poetry", "run", "run"]
