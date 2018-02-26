#!/usr/bin/env bash

export HOST_IP=`/sbin/ip route|awk '/default/ { print $3 }'`
export TRANSMISSION_ADDR=$HOST_IP

uwsgi uwsgi.ini
