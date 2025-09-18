# Use official Python runtime as base
FROM python:3.11-slim

# Set working directory
WORKDIR /app

# Copy requirements first (better caching)
COPY requirements.txt .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy app code
COPY . .

# Expose port 5011
EXPOSE 5011

# Run Flask app
CMD ["python", "app.py"]
