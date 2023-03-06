#!/bin/sh

envsubst '${CATALOGUE_HOST} ${USER_HOST} ${CART_HOST} ${SHIPPING_HOST} ${PAYMENT_HOST} ${RATINGS_HOST} ${WEB_HOST}' < /etc/nginx/conf.d/default.conf.template > /etc/nginx/conf.d/default.conf
