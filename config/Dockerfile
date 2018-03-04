ARG ALPINE_LINUX_IMAGE

FROM $ALPINE_LINUX_IMAGE
MAINTAINER busja.dev@gmail.com

VOLUME /etc/consul-template/conf
COPY nginx-consul/conf/* /etc/consul-template/conf/

VOLUME /etc/consul-template/templates
COPY nginx-consul/templates/* /etc/consul-template/templates/

CMD tail -f /dev/null
