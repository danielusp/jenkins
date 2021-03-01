#!/bin/bash
docker run --rm -d \
	--name jenkins-dev \
	-p 8080:8080 \
	-p 50000:50000 \
	-v "${PWD}/jenkins_home:/var/jenkins_home" \
	-v "${PWD}/output:/var/output" \
	-v "/run/docker.sock:/run/docker.sock" \
	-v "/usr/bin/docker:/usr/bin/docker" \
	jenkins:dev

sudo chmod 666 /var/run/docker.sock

sleep 5
google-chrome http://localhost:8080