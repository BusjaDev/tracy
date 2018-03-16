ARG ALPINE_LINUX_IMAGE

FROM $ALPINE_LINUX_IMAGE
MAINTAINER busja.dev@gmail.com

CMD echo start

VOLUME /assets
COPY templates /assets/templates

CMD tail -f /dev/null
