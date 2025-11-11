FROM webhippie/alpine:latest@sha256:35bfd4356d7b17c259d7962bac57c7d57c917fa91106df34e96b3d33c5d15102
MAINTAINER Thomas Boerger <thomas@webhippie.de>

VOLUME ["/srv/app"]

WORKDIR /srv/app
ENTRYPOINT ["/usr/bin/hugo"]
CMD ["server"]

RUN apk update && \
  apk add \
    make \
    git \
    hugo && \
  rm -rf \
    /var/cache/apk/*
