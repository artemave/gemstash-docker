FROM ruby:2.3

RUN gem install --no-ri --no-rdoc gemstash

CMD ["gemstash", "start", "--no-daemonize"]
