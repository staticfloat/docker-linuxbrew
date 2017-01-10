FROM ubuntu:precise
MAINTAINER Shaun Jackman <sjackman@gmail.com>

RUN localedef -i en_US -f UTF-8 en_US.UTF-8

RUN apt-get update && apt-get install -y python-software-properties
RUN add-apt-repository ppa:git-core/ppa && apt-get update
RUN apt-get install -y curl g++ gawk git m4 make patch ruby tcl

RUN useradd -m -s /bin/bash linuxbrew
RUN echo 'linuxbrew ALL=(ALL) NOPASSWD:ALL' >>/etc/sudoers
RUN echo '/home/linuxbrew/.linuxbrew/lib' >> /etc/ld.so.conf.d/linuxbrew.conf

USER linuxbrew
WORKDIR /home/linuxbrew
ENV PATH /home/linuxbrew/.linuxbrew/bin:/home/linuxbrew/.linuxbrew/sbin:$PATH
ENV SHELL /bin/bash
RUN yes |ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Linuxbrew/install/master/install)"
RUN brew doctor || true
