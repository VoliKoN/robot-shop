FROM bitnami/mysql:8.0.32

VOLUME /data

ENV ALLOW_EMPTY_PASSWORD=yes \
    MYSQL_DATABASE=cities \
    MYSQL_USER=shipping \
    MYSQL_PASSWORD=secret

COPY scripts/* /docker-entrypoint-initdb.d/
