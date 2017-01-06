FROM aarch64/alpine:edge

ARG GETH_VERSION=v1.5.5
ARG NODE_USER=someone

RUN echo user ${NODE_USER} build geth version ${GETH_VERSION}

RUN \
  apk add --update go git make gcc musl-dev && \
  git clone -b ${GETH_VERSION}  --depth 1 https://github.com/ethereum/go-ethereum && \
  (cd go-ethereum && make geth) && \
  cp go-ethereum/build/bin/geth /geth && \
  apk del go git make gcc musl-dev && \
  rm -rf /go-ethereum && rm -rf /var/cache/apk/*

EXPOSE 8545
EXPOSE 8546
EXPOSE 30303

ENTRYPOINT ["/geth","--light","--identity",${NODE_USER},"--datadir","/chain","--rpc","--ws"]
