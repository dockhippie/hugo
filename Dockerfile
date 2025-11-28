FROM webhippie/alpine:latest@sha256:99d99e5b29c450d387425c03ee3e43361a25db01797f3b4c68035da42ac84e1c
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
