# Docker System Admin and Troubleshooting Toolkit

This project focus on providing system administration and troubleshooting tools without the need of installing them in the host system.

## Tools

* **bash** - GNU Bourne-Again SHell.
* **curl** - Tool to transfer data from or to a server.
* **htop** - A ncurses-based process viewer for Linux.
* **jq** - Commandline JSON processor.
* **netcat-openbsd** - simple unix utility which reads and writes data across network connections, using TCP or UDP protocol.
* **net-tools** - Includes network tools such as arp, ifconfig, netstat, rarp, nameif and route.
* **openssh-client** - OpenSSH SSH client.
* **python** - An interpreted, interactive, object-oriented programming language.
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

