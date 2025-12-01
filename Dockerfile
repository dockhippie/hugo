FROM webhippie/alpine:latest@sha256:32cb1b1fbfa480ac1f1b8b749b4a403d5a31c3ea06da27c4ed06958e68e72241
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
