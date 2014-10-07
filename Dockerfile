FROM ubuntu
MAINTAINER Shaun Jackman <sjackman@gmail.com>

RUN apt-get update
RUN apt-get install -y curl g++ make ruby

RUN useradd -m linuxbrew

ENV PATH /home/linuxbrew/.linuxbrew/bin:/usr/sbin:/usr/bin:/sbin:/bin
RUN yes |sudo -u linuxbrew ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/linuxbrew/go/install)"
