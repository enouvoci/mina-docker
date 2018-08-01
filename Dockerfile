FROM ruby:alpine

RUN gem install mina && gem install mina-npm --pre

RUN apk update && apk add openssh-client bash

RUN apk --no-cache update && \
    apk --no-cache add curl openssh-client bash python py-pip py-setuptools ca-certificates groff less && \
    rm -rf /var/cache/apk/*
    
# ENV SSH_AUTH_SOCK /root/ssh-agent

WORKDIR /root/workdir
