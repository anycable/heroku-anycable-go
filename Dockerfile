FROM heroku/heroku:18

ADD ./ /buildback

RUN mkdir -p /app/bin

ADD ./test/env /env

WORKDIR /buildback

RUN mkdir vendor

RUN bin/compile /app ./vendor /env

WORKDIR /app

CMD ./bin/anycable-go -v
