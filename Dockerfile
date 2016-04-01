FROM alpine:latest
MAINTAINER Geoff Bowers <modius@daemon.com.au>

RUN apk update && apk add --update darkhttpd && \
  mkdir -p /home/www && \
  rm -rf /var/cache/apk/*

COPY ./code/ /home/www/

EXPOSE 80

CMD ["darkhttpd", "/home/www"]