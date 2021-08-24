FROM alpine:latest

RUN apk update && apk add \
    iperf \
    && rm -rf /var/cache/apk/*

EXPOSE 5001/udp 5001/tcp

ENTRYPOINT ["iperf"]