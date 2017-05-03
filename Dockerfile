FROM node:6

MAINTAINER Lutz Selke <ls@hfci.de>

RUN echo 'deb http://ftp.debian.org/debian jessie-backports main' >> /etc/apt/sources.list && \
    apt-get update -y && \
    apt-get -t jessie-backports install -y phantomjs

RUN npm cache clean && \
    npm install -g bower && \
    npm install -g ember-cli@2.13.1
