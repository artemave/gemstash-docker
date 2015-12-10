# Run [gemstash](https://github.com/bundler/gemstash) in docker

Gemstash is a ruby gems caching mirror. It speeds up `bundle install` quite a lot.

This repo allows to run it in a docker container.

## Requirements

Docker

## Deploy

On the server:

```
docker create -v /gemstash_cache --name gemstash_cache artemave/gemstash /bin/true
docker run -d -p '9292:9292' --restart=always --volumes-from gemstash_cache --name gemstash_web artemave/gemstash
```
