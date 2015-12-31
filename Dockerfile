FROM ruby:2.2

RUN mkdir /app
WORKDIR /app

COPY Gemfile ./
RUN bundle install --retry 3 --jobs 3

COPY . .

CMD ["bundle", "exec", "gemstash", "start", "--no-daemonize"]
