FROM aarch64/ubuntu:yakkety

RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y wget nano
RUN wget http://d1h4xl4cr1h0mo.cloudfront.net/v1.4.7/aarch64-unknown-linux-gnu/parity_1.4.7_arm64.deb
RUN dpkg -i parity_1.4.7_arm64.deb
RUN rm parity_1.4.7_arm64.deb

ENTRYPOINT ["parity","--db-path","/chain","--pruning","fast","--identity","gilles"]

EXPOSE 8080 8545 8180
