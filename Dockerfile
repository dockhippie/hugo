FROM webhippie/alpine:latest@sha256:e2c496756f621cb9f09f66c2bf21e6553431f8a6fe05dd428db4a8eeedce3dcd
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
