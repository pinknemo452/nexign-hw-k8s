FROM python:3.14-alpine

COPY . /app
WORKDIR /app


CMD ["python3", "-m", "http.server", "8000"]