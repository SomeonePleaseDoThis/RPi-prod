FROM aarch64/ubuntu:yakkety

RUN apt-get update && apt-get upgrade && \
  apt-get install curl sudo wget
RUN wget https://sh.rustup.rs && sh rustup_init.sh

