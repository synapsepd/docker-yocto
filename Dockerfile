FROM ubuntu:16.04

RUN apt-get update

RUN apt-get -y install python python-pip python3 python3-pip git chrpath cpio diffstat gawk texinfo wget iputils-ping locales

RUN locale-gen en_US.UTF-8

RUN update-locale LC_ALL=en_US.UTF-8 LANG=en_US.UTF-8 LANGUAGE=en_US.UTF-8

RUN useradd -m -s /bin/bash --groups sudo builduser

RUN echo '%sudo ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers
