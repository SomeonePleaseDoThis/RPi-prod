FROM aarch64/ubuntu:yakkety

RUN apt-get update && apt-get upgrade && \
  apt-get install -y curl sudo wget git-core gcc
RUN wget https://static.rust-lang.org/rustup/rustup-init.sh && sh rustup_init.sh && \
  git clone --branch v1.4.9 https://github.com/ethcore/parity && \
  cd parity && \
  /root/.cargo/bin/cargo build --release build --release

