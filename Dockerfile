FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /app

# Copy the Python script into the container
COPY app.py /app/

# Install the dependencies

COPY paragraphs.txt /app/
RUN pip install nltk 


# Command to run the Python script
CMD ["python", "app.py"]