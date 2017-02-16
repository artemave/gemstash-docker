FROM ruby:2.3

RUN useradd -ms /bin/bash gemstash

RUN gem install --no-ri --no-rdoc gemstash

USER gemstash

CMD ["gemstash", "start", "--no-daemonize"]
