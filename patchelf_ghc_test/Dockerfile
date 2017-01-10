FROM sjackman/linuxbrew-standalone:precise

RUN git config --global user.email "linuxbrew@inter.net"
RUN git config --global user.name "Linux Brew"
RUN brew tap --full homebrew/core
RUN brew pull https://github.com/Linuxbrew/homebrew-core/pull/1378

# Get autoconf
#USER root
#RUN apt-get install -y autoconf
#USER linuxbrew

# Download/build new version of binutils
#RUN curl -v -L https://ftp.gnu.org/gnu/binutils/binutils-2.27.tar.bz2 | tar jx
#RUN cd binutils-2.27 && ./configure && make
#USER root
#RUN cd binutils-2.27 && make install
#USER linuxbrew

RUN brew install automake autoconf binutils

# Download/build patchelf
RUN git clone https://github.com/staticfloat/patchelf -b sf/pr_10
RUN cd patchelf && ./bootstrap.sh && ./configure && make

# Disable these lines to make it break
RUN PATCHELF_PATH=$(readlink -f $(which patchelf)); rm -f $PATCHELF_PATH; cp patchelf/src/patchelf $PATCHELF_PATH

# This is our big test
USER root
RUN ldconfig
USER linuxbrew
RUN brew install -v ghc
