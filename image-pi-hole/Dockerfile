FROM aarch64/debian:stretch-slim

MAINTAINER 

RUN apt-get update && apt-get install -y wget

RUN wget -O basic-install.sh https://install.pi-hole.net && \
  bash basic-install.sh

EXPOSE 53 80
