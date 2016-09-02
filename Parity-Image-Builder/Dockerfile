FROM ubuntu-rust:1.11.0
# Source:https://github.com/ethcore/parity/blob/master/docker/ubuntu-arm/Dockerfile
WORKDIR /build
# install tools and dependencies
#RUN apt-get -y update && \
#        apt-get install -y --force-yes --no-install-recommends \
#	clang

# flush image
RUN apt-get autoremove -y
RUN rm -rf main main.rs rust-1.11.0.tar.gz hello_world

# build parity
#  removed build config: --target armv7-unknown-linux-gnueabihf
RUN mkdir /home/Parity && cd /home/Parity/ && \
	git clone -b v1.3.0 https://github.com/ethcore/parity && \
        cd parity && \
        cargo build  --release --verbose && \
        	ls /build/parity/target/

RUN file /build/parity/target/armv7-unknown-linux-gnueabihf/release/parity

EXPOSE 22 8080 8545 8180
ENTRYPOINT ["/build/parity/target/armv7-unknown-linux-gnueabihf/release/parity"]

