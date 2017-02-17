FROM aarch64/alpine:3.5

ARG GETH_VERSION=v1.5.5
ARG NODE_USER=someone

RUN echo user ${NODE_USER} build geth version ${GETH_VERSION} && \
  apk update && \
  apk add --upgrade go git make gcc musl-dev linux-headers && \
  git clone -b ${GETH_VERSION}  --depth 1 https://github.com/ethereum/go-ethereum && \
  (cd go-ethereum && make geth) && \
  cp go-ethereum/build/bin/geth /geth && \
  apk del go git make gcc musl-dev linux-headers && \
  rm -rf /go-ethereum && rm -rf /var/cache/apk/*

EXPOSE 8545 8546 30303

ENTRYPOINT ["/geth","--light","--identity","SPDT","--datadir","/chain","--rpc","--ws"]
