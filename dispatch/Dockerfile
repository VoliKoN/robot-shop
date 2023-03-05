FROM golang:1.17.13-alpine3.16 as build-env

ARG MAIN_PATH=main.go

RUN mkdir -p "${GOPATH}/src" "${GOPATH}/bin" /appsrc

WORKDIR /appsrc

COPY . .

RUN go build -o main $MAIN_PATH

# Final stage
FROM alpine:3.16

# EXPOSE 8080

ENV APPUSER=appuser
ENV APPUID=1000
ENV APPGID=1000


RUN adduser \
    -D -h "/app" \
    -u "$APPUID" \
    "$APPUSER"

WORKDIR /app
USER appuser

COPY --chown=appuser:appuser --from=build-env /appsrc/main /app/


ENTRYPOINT ["/app/main"]