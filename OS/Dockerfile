FROM armv7/armhf-ubuntu:latest
# Source:https://github.com/ethcore/parity/blob/master/docker/ubuntu-arm/Dockerfile
WORKDIR /build
# install tools and dependencies
RUN apt-get -y update \
	&& apt-get upgrade -y \
	&& apt-get install -y --force-yes --no-install-recommends \
    apt-utils \
  	curl \
  	git \
  	make \
  	wget \
  	file \
  	ca-certificates \
  	htop \
  	nano \
  	sudo \
    clang \
	&& apt-get clean

# Get Rust from compile archive
RUN curl https://static.rust-lang.org/dist/rustc-1.11.0-aarch64-unknown-linux-gnu.tar.gz>rust-1.11.0.tar.gz
RUN tar -xvzf rust-1.11.0.tar.gz
RUN sh rust-1.11.0-aarch64-unknown-linux-gnu/install.sh

RUN mkdir hello_world && cd hello_world
RUN echo "fn main() {" > main.rs
RUN echo '	println!("Hello, world!");' >> main.rs
RUN echo "}" >> main.rs
RUN rustc main.rs
RUN ./main

EXPOSE 22
