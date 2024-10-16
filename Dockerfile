FROM python:3.9-slim

WORKDIR /app

# Copy the requirements file
COPY app/requirements.txt .

# Install dependencies and print installed packages
RUN pip install --no-cache-dir -r requirements.txt && \
    pip list

# Copy the application code
COPY app/app.py .

# Print Python version and contents of app.py for verification
RUN python --version && \
    cat app.py

# Run the application
CMD ["python", "app.py"]