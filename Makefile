build:
	./build.sh

install:
	docker run --rm \
	-p 8080:8080 \
	-p 50000:50000 \
	-v "${PWD}/jenkins_home:/var/jenkins_home" \
	-v "/run/docker.sock:/run/docker.sock" \
	-v "/usr/bin/docker:/usr/bin/docker" \
	jenkins:dev

run:
	docker run --rm -d \
	-p 8080:8080 \
	-p 50000:50000 \
	-v "${PWD}/jenkins_home:/var/jenkins_home" \
	-v "/run/docker.sock:/run/docker.sock" \
	-v "/usr/bin/docker:/usr/bin/docker" \
	jenkins:dev