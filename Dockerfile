FROM ruby:alpine

RUN gem install mina && gem install mina-npm --pre

RUN apk update && apk add openssh-client bash

# ENV SSH_AUTH_SOCK /root/ssh-agent

WORKDIR /root/workdir
