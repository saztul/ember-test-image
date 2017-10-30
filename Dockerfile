FROM node:6

MAINTAINER Lutz Selke <ls@hfci.de>

RUN apt-get update -y && \
    apt-get install -y fontconfig libfontconfig1 libfontconfig1-dev && \
    export NODE_PATH=/usr/local/lib/node_modules/ && \
    npm cache clean && \
    npm install -g phantomjs-prebuilt && \
    npm install -g bower && \
    npm install -g ember-cli@2.13.1

USER node
