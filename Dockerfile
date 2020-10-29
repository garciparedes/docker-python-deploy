FROM python:3.7.3

RUN curl -s https://packagecloud.io/install/repositories/github/git-lfs/script.deb.sh | bash

RUN apt-get update && \
    apt-get install -y \
        git-lfs \
        plantuml \
        gettext-base

RUN wget --no-verbose https://download.docker.com/linux/static/stable/x86_64/docker-19.03.9.tgz && \
        tar xvzf docker-19.03.9.tgz && \
        mv docker/docker /usr/bin/docker && \
        chmod +x /usr/bin/docker && \
        rm -rf docker/

RUN pip install \
    fabric \
    docker \
    docker-compose  

RUN git lfs install

CMD tail -f /dev/null
