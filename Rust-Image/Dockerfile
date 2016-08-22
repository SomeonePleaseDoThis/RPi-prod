FROM armv7/armhf-ubuntu:latest
# Source:https://github.com/ethcore/parity/blob/master/docker/ubuntu-arm/Dockerfile
WORKDIR /build
# install tools and dependencies
RUN apt-get -y update && apt-get install -y --force-yes --no-install-recommends \
        apt-utils \
	curl \
	git \
	make \
	wget \
	file \
	ca-certificates \
	ssh \
	htop \
	nano \
	sudo \
        && apt-get clean

# Get Rust from compile archive
RUN curl https://static.rust-lang.org/dist/rust-1.11.0-arm-unknown-linux-gnueabihf.tar.gz>rust-1.11.0.tar.gz
RUN tar -xvzf rust-1.11.0.tar.gz
RUN sh rust-1.11.0-arm-unknown-linux-gnueabihf/install.sh

EXPOSE 22

