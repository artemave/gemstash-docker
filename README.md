# Ruby gems caching proxy

For faster `bundle install`

## Requirements

Docker

## Deploy

On the server:

```
docker create -v /gemstash_cache --name gemstash_cache artemave/gemstash /bin/true
docker run -d -p '9292:9292' --restart=always --volumes-from gemstash_cache --name gemstash_web artemave/gemstash
```
