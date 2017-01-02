FROM aarch64/ubuntu:yakkety

RUN add-apt-repository -y ppa:ethereum/ethereum
RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y wget nano ethereum


ENTRYPOINT ["/geth","--light","--identity","gilles"]

EXPOSE 8545 8546 30303
