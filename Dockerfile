# Using a build stage in order to build htop using the flag `--with-proc=/proc_host`
# which allows it to use a custom location instead of `/proc`.
FROM alpine:3.17 as builder

WORKDIR /build
RUN apk add --no-cache alpine-sdk \
                     build-base \
                     ncurses-dev \
                     autoconf \
                     automake \
                     curl \
                     unzip; \
    curl -L https://github.com/htop-dev/htop/archive/refs/tags/3.2.2.zip --output htop.zip; \
    unzip htop.zip; \
    cd htop-3.2.2

WORKDIR /build/htop-3.2.2
RUN sh autogen.sh; \
    sh configure --prefix=/build/htop-3.2.2/dist --with-proc=/proc_host; \
    make; \
    make install


# Main Container
FROM alpine:3.17

RUN apk add --no-cache \
        bash=5.2.15-r0   \
        bind-tools=9.18.13-r0  \
        curl=8.0.1-r0   \
        iptraf-ng=1.2.1-r1   \
        iotop=0.6-r9   \
        jq=1.6-r2   \
        nano=7.0-r0 \
        netcat-openbsd=1.130-r4   \
        net-tools=2.10-r0   \
        nmap=7.93-r0   \
        openssh-client-default=9.1_p1-r2   \
        python3=3.10.11-r0   \
        sysstat=12.6.1-r0  \
        tcpdump=4.99.4-r0  \
        tshark=4.0.1-r0   \
        vim=9.0.0999-r0
     

COPY --from=builder /build/htop-3.2.2/dist/bin/htop /usr/local/bin/
