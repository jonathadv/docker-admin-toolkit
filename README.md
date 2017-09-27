# Docker System Admin and Troubleshooting Toolkit
[![Docker Build Automated](https://img.shields.io/docker/automated/jonathadv/admin-toolkit.svg)](https://hub.docker.com/r/jonathadv/admin-toolkit/)
[![Docker Build Status](https://img.shields.io/docker/build/jonathadv/admin-toolkit.svg)](https://hub.docker.com/r/jonathadv/admin-toolkit/)
[![Docker Pulls](https://img.shields.io/docker/pulls/jonathadv/admin-toolkit.svg)](https://hub.docker.com/r/jonathadv/admin-toolkit/)

This project focus on providing system administration and troubleshooting tools without the need of installing them in the host system.

## Tools

* **bash** - GNU Bourne-Again SHell.
* **curl** - Tool to transfer data from or to a server.
* **htop** - A ncurses-based process viewer for Linux.
* **jq** - Commandline JSON processor.
* **netcat** - Utility which reads and writes data across network connections using TCP or UDP protocol.
* **net-tools** - Includes network tools such as arp, ifconfig, netstat, rarp, nameif and route.
* **openssh-client** - OpenSSH SSH client.
* **python 2** - An interpreted, interactive, object-oriented programming language.
* **sysstat** - System performance tools for the Linux operating system.
* **tcpdump** - Dump traffic on a network.
* **vim** - Vi IMproved, a programmers text editor.

## Running the container

Use `--net=host` allows `tcpdump` to access the host's network interfaces.

Optionally you can create a local directory and map it to the container:

```bash
mkdir /tmp/data

docker run \
    --rm \
    --name toolkit \
    --net=host \
    -v /tmp/data/:/tmp/data/
    -it \
    jonathadv/admin-toolkit \
    bash
```

