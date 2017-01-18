FROM aarch64/alpine:latest
ARG INST_PATH="https://github.com/containous/traefik/releases/download/v1.1.2/traefik_linux-arm64"
ADD https://github.com/containous/traefik/releases/download/v1.1.2/traefik_linux-arm64 /traefik
RUN echo build from ${INST_PATH} &&\
    apk update &&\
    apk upgrade --no-cache &&\
    apk add --no-cache ca-certificates &&\
    chmod +x /traefik
EXPOSE 80 8080 443
ENTRYPOINT ["/traefik"]
