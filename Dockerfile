FROM webhippie/alpine:latest@sha256:4211297043fa71f4cad1e67cdcd81f611aed2ad0250217e918e55a5bb7dc2d74
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
