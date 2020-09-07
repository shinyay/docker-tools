FROM alpine:3.12

ARG DOCKER_CLI_VERSION=19.03.12
ARG DIVE_VERSION=0.9.2
ARG PACK_VERSION=0.13.1
ARG EMC_VERSION=0.0.3

RUN wget -O- https://download.docker.com/linux/static/stable/x86_64/docker-${DOCKER_CLI_VERSION}.tgz | \
    tar -xzf - docker/docker --strip-component=1 && \
    mv docker /usr/local/bin && \
    ## Dive for Container layers ##
    wget -O- https://github.com/wagoodman/dive/releases/download/v${DIVE_VERSION}/dive_${DIVE_VERSION}_linux_amd64.tar.gz | tar -xvz dive && \
    mv dive /usr/local/bin && \
    ## Pack for Buildpacks ##
    wget -O- https://github.com/buildpacks/pack/releases/download/v${PACK_VERSION}/pack-v${PACK_VERSION}-linux.tgz |tar -xvz && \
    chmod +x pack && mv pack /usr/local/bin && \
    ## Emc for Java Memory Caliculator ##
    wget https://github.com/wreulicke/emc/releases/download/v${EMC_VERSION}/emc_${EMC_VERSION}_linux_amd64 -O emc && \
    chmod +x emc && mv emc /usr/local/bin

WORKDIR /usr/local/bin
CMD ["/bin/ls","-la"]
