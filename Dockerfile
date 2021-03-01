FROM jenkins/jenkins:lts

USER root

RUN apt-get update && \
apt-get -y install python3-pip

RUN curl -sL https://deb.nodesource.com/setup_10.x -o nodesource_setup.sh && \
    bash nodesource_setup.sh && \
    apt-get update && apt-get install nodejs -y

USER jenkins

RUN git config --global http.sslVerify false