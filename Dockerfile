FROM python:latest

ENV DISPLAY=:0.0

RUN apt-get update && \
    apt-get install -y \
        software-properties-common \
        gnupg-agent

RUN apt-key adv --keyserver keyserver.ubuntu.com --recv-keys A1715D88E1DF1F24 && \
    add-apt-repository ppa:git-core/ppa -y

RUN curl -s https://packagecloud.io/install/repositories/github/git-lfs/script.deb.sh | bash

RUN apt-get update && apt-get install -y \
    git \ 
    git-lfs \
    plantuml 
    
RUN pip install \
    fabric

RUN git lfs install

CMD tail -f /dev/null
