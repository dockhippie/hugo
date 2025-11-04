FROM webhippie/alpine:latest@sha256:153cead8447ed8da4f0dafe7a839bac3c6375afb44a0be3ccb600f1a9727252c
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
