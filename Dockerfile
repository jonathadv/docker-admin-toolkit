FROM alpine:3.6

MAINTAINER Jonatha Daguerre <jonatha@daguerre.com.br>

RUN apk add --no-cache \
        bash \
        curl \
        htop \
        jq \
        netcat-openbsd \
        net-tools \
        openssh-client \
        python \
        sysstat \
        tcpdump \
        vim

