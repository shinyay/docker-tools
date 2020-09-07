FROM alpine:3.12

ARG DOCKER_CLI_VERSION=19.03.12
RUN wget -O- https://download.docker.com/linux/static/stable/x86_64/docker-${DOCKER_CLI_VERSION}.tgz | \
    tar -xzf - docker/docker --strip-component=1 && \
    mv docker /usr/local/bin

COPY emc /usr/local/bin
COPY pack /usr/local/bin

WORKDIR /usr/local/bin
CMD ["/bin/ls","-la"]
