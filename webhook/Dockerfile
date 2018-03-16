ARG UBUNTU_LINUX_IMAGE
FROM $UBUNTU_LINUX_IMAGE

MAINTAINER busja.dev@gmail.com

RUN apt -qq update && apt -y -qq upgrade && apt -qq -y install software-properties-common build-essential curl telnet less net-tools
RUN add-apt-repository -y ppa:jonathonf/python-3.6 && apt -qq update

RUN apt -qq -y install python3.6 python3.6-dev python3-pip
RUN python3.6 -m pip install -q --upgrade pip uwsgi

WORKDIR /srv/

COPY requirements.txt /srv/requirements.txt
RUN python3.6 -m pip install -q -r requirements.txt

COPY serve.py /srv/serve.py
COPY uwsgi.ini /srv/uwsgi.ini
COPY start.sh /srv/start.sh

CMD ["sh", "start.sh"]
