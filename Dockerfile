FROM webhippie/alpine:latest@sha256:139eec0b189638096d65847ecdb00e6a2260bf785cb0f93a7eaa012e6b075789
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
