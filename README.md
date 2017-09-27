# Docker System Admin and Troubleshooting Toolkit

This project focus on providing system administration and troubleshooting tools without the need of installing them in the host system.

## Tools already installed

* bash
* curl
* htop
* jq
* netcat-openbsd
* net-tools
* openssh-client
* python
* sysstat
* tcpdump
* vim

## Running the container locally

```bash
# Running with '--net=host' allows the container to use tcpdump in host interfaces.

docker run \
    --rm \
    --name toolkit \
    --net=host \
    -it \
    jonathadv/admin-toolkit \
    bash
```

