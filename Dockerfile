FROM webhippie/alpine:latest@sha256:e8b68ad58d49d181d96a32c32ae963a823896065274b0d1d0e9645c487cb97c8
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
