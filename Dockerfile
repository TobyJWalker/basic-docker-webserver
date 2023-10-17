# Use python 3.11 base docker
FROM python:3.11

# Install Pipenv
RUN pip install pipenv

# Copy files to /app and set working directory
COPY . /app
WORKDIR /app

# Install dependencies
RUN pipenv install --system --deploy

# Run the application
CMD ["python", "app.py"]