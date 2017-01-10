FROM sjackman/linuxbrew-core:precise
MAINTAINER Shaun Jackman <sjackman@gmail.com>

USER root
RUN apt-get install -y build-essential curl default-jdk gawk gfortran git m4 ruby texinfo unzip \
	libbz2-dev libcurl4-openssl-dev libexpat-dev libncurses-dev zlib1g-dev

USER linuxbrew
RUN brew doctor
