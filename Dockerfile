FROM webhippie/alpine:latest@sha256:ec2ad56f31c4e87dc839859394660a7799dec812f7509e404b998d4d6cf9b60d
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
