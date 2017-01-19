FROM aarch64/ubuntu:yakkety

ARG PARITY_VERSION=1.4.6
ENV PARITY_PACKAGE=parity_${PARITY_VERSION}_arm64.deb
ARG PARITY_PKG_PATH=http://d1h4xl4cr1h0mo.cloudfront.net/v1.4.7/aarch64-unknown-linux-gnu/${PARITY_PACKAGE}
ARG NODE_USER=someone

RUN echo ${NODE_USER} builds ${PARITY_PACKAGE} \
  && apt-get update && apt-get upgrade -y \
  && apt-get install -y wget nano libssl \
  && wget ${PARITY_PKG_PATH} \
  && dpkg -i ${PARITY_PACKAGE} \
  && rm ${PARITY_PACKAGE}

ENTRYPOINT ["parity","--db-path","/chain","--pruning","fast","--identity","SPDT"]

EXPOSE 8080 8545 8180
