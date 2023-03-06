FROM nginx:1.21.6-alpine

RUN apk add --no-cache curl

EXPOSE 8080


COPY default.conf /etc/nginx/conf.d/default.conf
COPY static /usr/share/nginx/html
