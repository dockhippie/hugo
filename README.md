# Hugo

[![](https://badge.imagelayers.io/webhippie/hugo:latest.svg)](https://imagelayers.io/?images=webhippie/hugo:latest 'Get your own badge on imagelayers.io')

These are docker images for [Hugo](https://gohugo.io) running on an
[Alpine Linux container](https://registry.hub.docker.com/u/webhippie/alpine/).


## Versions

* [latest](https://github.com/dockhippie/hugo/tree/master)
  available as ```webhippie/hugo:latest``` at
  [Docker Hub](https://registry.hub.docker.com/u/webhippie/hugo/)


## Volumes

* /srv/app


## Ports

* None


## Available environment variables

**None**


## Inherited environment variables

```bash
ENV LOGSTASH_ENABLED false
ENV LOGSTASH_HOST logstash
ENV LOGSTASH_PORT 5043
ENV LOGSTASH_CA /etc/ssl/logstash/certs/ca.pem # As string or filename
ENV LOGSTASH_CERT /etc/ssl/logstash/certs/cert.pem # As string or filename
ENV LOGSTASH_KEY /etc/ssl/logstash/private/cert.pem # As string or filename
ENV LOGSTASH_TIMEOUT 15
ENV LOGSTASH_OPTS
```


## Contributing

Fork -> Patch -> Push -> Pull Request


## Authors

* [Thomas Boerger](https://github.com/tboerger)


## License

MIT


## Copyright

```
Copyright (c) 2015-2016 Thomas Boerger <http://www.webhippie.de>
```
