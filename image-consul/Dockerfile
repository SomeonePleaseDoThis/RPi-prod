FROM alpine:3.5

RUN apk update && apk add wget unzip

RUN wget https://releases.hashicorp.com/consul/0.7.5/consul_0.7.5_linux_arm.zip && \
  unzip -a consul_0.7.5_linux_arm

