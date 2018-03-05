#!/usr/bin/env bash

service nginx start
consul-template -config /etc/consul-template/conf
