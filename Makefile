build:
	mkdir jenkins_home && \
	sudo chmod 777 jenkins_home && \
	docker pull jenkins/jenkins:lts

jenkins:
	docker run --rm -p 8080:8080 -p 50000:50000 -v "${PWD}/jenkins_home:/var/jenkins_home" jenkins/jenkins:lts
