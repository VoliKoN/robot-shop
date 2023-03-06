FROM nginx:1.21.6-alpine

RUN apk add --no-cache curl

EXPOSE 8080

ENV CATALOGUE_HOST=catalogue \
    USER_HOST=user \
    CART_HOST=cart \
    SHIPPING_HOST=shipping \
    PAYMENT_HOST=payment \
    RATINGS_HOST=ratings-nginx \
    WEB_HOST=web


COPY set-vars.sh /docker-entrypoint.d/
COPY default.conf.template /etc/nginx/conf.d/default.conf.template
