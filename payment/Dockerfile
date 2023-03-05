FROM python:3.9.16-alpine

EXPOSE 8080
USER root

# ENV INSTANA_SERVICE_NAME=payment

WORKDIR /app

COPY requirements.txt /app/

RUN apk add --no-cache pcre curl && \
    apk add --no-cache --virtual .build-deps gcc libc-dev linux-headers pcre-dev && \
    pip install --no-cache-dir -r requirements.txt && \
    apk del --no-network .build-deps

COPY *.py /app/
COPY payment.ini /app/

#CMD ["python", "payment.py"]
CMD ["uwsgi", "--ini", "payment.ini"]

