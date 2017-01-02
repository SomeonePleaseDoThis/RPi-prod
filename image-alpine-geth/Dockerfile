FROM aarch64/alpine:edge

RUN \
  apk add --update go git make gcc musl-dev && \
  git clone -b v1.5.5  --depth 1 https://github.com/ethereum/go-ethereum && \
  (cd go-ethereum && make geth) && \
  cp go-ethereum/build/bin/geth /geth && \
  apk del go git make gcc musl-dev && \
  rm -rf /go-ethereum && rm -rf /var/cache/apk/*

EXPOSE 8545
EXPOSE 8546
EXPOSE 30303

ENTRYPOINT ["/geth","--light","--identity","gilles","--warp","--datadir","/chain","--rpc","--ws"]
