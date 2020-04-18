FROM python:latest

ENV DISPLAY=:0.0

RUN apt-get update && \
    apt-get install -y \
        software-properties-common

RUN apt-key adv --keyserver keyserver.ubuntu.com --recv-keys A1715D88E1DF1F24 && \
    add-apt-repository ppa:git-core/ppa -y

RUN apt-get update && apt-get install -y \
    git \
    plantuml 

CMD tail -f /dev/null

