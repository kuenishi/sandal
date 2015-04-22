FROM ubuntu:12.04
MAINTAINER Kota Uenishi <kuenishi@gmail.com>
RUN apt-get update
RUN apt-get install -qq sudo python-pip openssh-server python-dev
RUN mkdir /work

COPY all.yml /work/
COPY inventory /work/

RUN pip install ansible
