FROM phusion/baseimage

RUN apt-get update && \
apt-get install -y --no-install-recommends wget curl ca-certificates && \
apt-get install -y --no-install-recommends git-core && \
apt-get install -y --no-install-recommends build-essential && \
apt-get install -y --no-install-recommends libssl-dev && \
apt-get install -y --no-install-recommends libreadline-dev && \
apt-get install -y --no-install-recommends libbz2-dev && \
apt-get install -y --no-install-recommends libsqlite3-dev && \
apt-get install -y --no-install-recommends libffi-dev && \
apt-get install -y --no-install-recommends llvm && \
apt-get install -y --no-install-recommends zlib1g-dev && \
apt-get install -y --no-install-recommends libncurses5-dev && \
apt-get install -y --no-install-recommends make && \
touch "dockerfile.v1"
# The above touch command allows us to invalidate cache on the previous run command.

RUN git clone git://github.com/yyuu/pyenv.git && \
cd pyenv/plugins/python-build && \
    ./install.sh


