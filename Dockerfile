FROM webhippie/alpine:latest@sha256:dc1e5004b67d73f49669d39843e75e8ea5573f40d1330c3bc7dbf73ee7e03421
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
