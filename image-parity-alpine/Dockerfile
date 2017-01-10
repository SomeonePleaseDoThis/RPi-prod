FROM aarch64/alpine:latest

RUN apk update && apk upgrade && \
  apk add curl wget

RUN wget https://static.rust-lang.org/dist/rust-1.14.0-aarch64-unknown-linux-gnu.tar.gz &&\
  tar -zxf rust-1.14.0-aarch64-unknown-linux-gnu.tar.gz && \
  /rust-1.14.0-aarch64-unknown-linux-gnu/install.sh
  
