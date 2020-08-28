FROM node:14.8.0-buster-slim

RUN apt-get update -y
RUN apt-get install -y curl wget unzip nano

RUN cd /tmp && curl -L https://github.com/nats-io/nats-server/releases/download/v2.1.7/nats-server-v2.1.7-linux-amd64.zip -o nats-server.zip && \
    unzip nats-server.zip && \
    mv nats-server-v2.1.7-linux-amd64/nats-server /usr/bin

RUN apt-get clean && \
    rm -rf /var/lib/apt/lists/* && \
    rm -rf /tmp/* /var/tmp/*

