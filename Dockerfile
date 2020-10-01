FROM python:3.7.3

RUN curl -s https://packagecloud.io/install/repositories/github/git-lfs/script.deb.sh | bash

RUN apt-get update && \
    apt-get install -y \
        git-lfs \
        plantuml \
        apt-transport-https \
        ca-certificates \
        curl \
        gnupg-agent \
        software-properties-common \
        lsb-release

RUN curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add -

RUN add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"

RUN apt-get update && \
    apt-get install -y \
    docker-ce \
    docker-ce-cli \
    containerd.io

RUN pip install \
    fabric

RUN git lfs install

CMD tail -f /dev/null
