FROM ruby:2.2-onbuild

CMD ["bundle", "exec", "gemstash", "start", "--no-daemonize", "--config-file=/usr/src/app/gemstash.yml"]
