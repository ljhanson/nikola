FROM docker.io/alpine:latest
MAINTAINER L.J. Hanson

RUN apk --no-cache add python3 py3-pip libffi-dev python3-dev alpine-sdk libxml2 py3-lxml zlib-dev libjpeg jpeg-dev zeromq-dev openjdk11-jre-headless && pip3 install -U pip setuptools wheel

RUN  pip3 install opentimestamps-client Nikola[Extras] && rm -Rf /root/.cache/

WORKDIR /nikola
