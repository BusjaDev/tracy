ARG UBUNTU_LINUX_IMAGE
FROM $UBUNTU_LINUX_IMAGE

MAINTAINER busja.dev@gmail.com

RUN apt -qq update && apt -qq -y upgrade && apt -qq -y install wget unzip nginx

ARG CONSUL_TEMPLATE_URI
RUN wget -q $CONSUL_TEMPLATE_URI -O temp.zip
RUN unzip -qq -d /usr/local/bin temp.zip

RUN rm temp.zip /etc/nginx/sites-enabled/default

RUN ln -sf /dev/stdout /var/log/nginx/access.log
RUN ln -sf /dev/stderr /var/log/nginx/error.log

EXPOSE 80 443

COPY start.sh start.sh
RUN mkdir /etc/consul-template

CMD ["sh", "start.sh"]
