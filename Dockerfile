FROM alpine

RUN apk add -U opendkim socat \
    && rm -rf /var/cache/apk/*

COPY entrypoint.sh /
COPY opendkim.conf /etc/opendkim/

EXPOSE 8891

ENTRYPOINT ["/entrypoint.sh"]
