#!/bin/sh

envsubst '${PHP_HOST}' < /etc/nginx/conf.d/default.conf.template > /etc/nginx/conf.d/default.conf

exec nginx-debug -g "daemon off;"
