FROM python:3.14-alpine

COPY . /app
WORKDIR /app

RUN addgroup -g 10001 server \
    && adduser -u 10001 -G server -s /bin/sh -D server
USER 10001

CMD ["python3", "-m", "http.server", "8000"]