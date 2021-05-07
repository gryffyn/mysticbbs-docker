# syntax=docker/dockerfile:1
FROM alpine:latest
RUN apk add --no-cache unrar libc6-compat
WORKDIR /root
ADD https://neveris.one/mirror/mys112a46_l64.rar /root
RUN unrar x mys112a46_l64.rar
ADD ./mystic /mystic
RUN cp /root/upgrade /mystic/
RUN rm -fr /root/*
ADD https://neveris.one/mirror/libcl.so /lib
RUN rm -fr /root/*
WORKDIR /mystic/
RUN ./upgrade
RUN apk del unrar
CMD ["/mystic/mis", "root", "/mystic", "server"]
