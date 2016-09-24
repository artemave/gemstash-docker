FROM ruby:2.3.1-alpine

RUN apk add --no-cache make gcc musl-dev sqlite-libs sqlite-dev &&\
  gem install --no-ri --no-rdoc gemstash --version 1.0.2

CMD ["gemstash", "start", "--no-daemonize"]
