FROM phusion/baseimage

RUN apt-get install -y --no-install-recommends curl ca-certificates && \
apt-get install -y --no-install-recommends git-core && \
apt-get install -y --no-install-recommends build-essential && \
apt-get install -y --no-install-recommends libssl-dev && \
apt-get install -y --no-install-recommends libreadline-dev && \
apt-get install -y --no-install-recommends libbz2-dev && \
apt-get install -y --no-install-recommends libsqlite3-dev && \
apt-get install -y --no-install-recommends libffi-dev && \

RUN git clone git://github.com/yyuu/pyenv.git && \
cd pyenv/plugins/python-build && \
    ./install.sh


