FROM node:6

MAINTAINER Lutz Selke <ls@hfci.de>

RUN apt-get update -y && \
    apt-get install -y wget fontconfig libfontconfig1 libfontconfig1-dev && \
    export NODE_PATH=/usr/local/lib/node_modules/ && \
    npm cache clean && \
    npm install -g phantomjs-prebuilt && \
    npm install -g bower && \
    npm install -g ember-cli@2.14 && \
    wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add - && \
    sh -c 'echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list' && \
    apt-get update -y && \
    apt-get install -y google-chrome-stable
