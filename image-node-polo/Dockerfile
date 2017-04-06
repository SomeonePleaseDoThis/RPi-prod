FROM aarch64/node:7.7.2-slim

ARG NODE_VERSION=7.7.1
ARG NODE_PKG_PATH=7.7.1-slim

RUN echo is building from ${NODE_PKG_PATH} \
  apt-get update && apt-get install -y git

RUN npm install --save web3 vue vue-wamp autobahn

VOLUME /usr/src/app
WORKDIR /usr/src/app

EXPOSE 8083
