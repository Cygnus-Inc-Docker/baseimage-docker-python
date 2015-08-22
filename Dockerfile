FROM debian

ADD ./version /version
RUN apt-get update && \
apt-get install -y --no-install-recommends \
wget \
curl \
ca-certificates \
git-core \
build-essential \
libssl-dev \
libreadline-dev \
libbz2-dev \
libsqlite3-dev \
libffi-dev \
llvm \
zlib1g-dev \
libncurses5-dev \
make

RUN git clone git://github.com/yyuu/pyenv.git && \
cd pyenv/plugins/python-build && \
    ./install.sh


