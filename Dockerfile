FROM python:3.7.3

RUN curl -s https://packagecloud.io/install/repositories/github/git-lfs/script.deb.sh | bash

RUN apt-get update && \
    apt-get install -y \
        git-lfs \
        plantuml 
    
RUN pip install \
    fabric

RUN git lfs install

CMD tail -f /dev/null
