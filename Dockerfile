FROM ubuntu:trusty

RUN apt-get update && apt-get install -y build-essential curl

ADD ./ /buildback

RUN mkdir -p /app/bin

ADD ./test/env /env

WORKDIR /buildback

RUN mkdir vendor

RUN bin/compile /app ./vendor /env

WORKDIR /app

CMD ./bin/anycable-go -v
