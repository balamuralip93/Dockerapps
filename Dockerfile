# Use an official Python runtime as a parent image
FROM 506035479554.dkr.ecr.us-east-2.amazonaws.com/caas-base-images-gamma:python-3.11-slim-0.0.2

WORKDIR /app

COPY requirements.txt ./

RUN pip install flask --no-cache-dir

COPY . .

EXPOSE 8000

CMD ["python", "./app.py"]

