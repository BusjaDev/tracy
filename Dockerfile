FROM armv7/armhf-ubuntu:16.04
MAINTAINER busja.dev@gmail.com

RUN apt-get update && apt-get install -y software-properties-common build-essential rsyslog net-tools
RUN add-apt-repository -y ppa:jonathonf/python-3.6 && apt-get update

RUN apt-get install -y python3.6 python3.6-dev python3-pip
RUN python3.6 -m pip install --upgrade pip uwsgi

WORKDIR /srv/

ADD requirements.txt /srv/requirements.txt
RUN python3.6 -m pip install -r requirements.txt

ADD serve_tracy.py /srv/serve_tracy.py
ADD uwsgi.ini /srv/uwsgi.ini
