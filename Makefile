build:
	./build.sh

install:
	docker run --rm \
	--name jenkins-dev \
	-p 8080:8080 \
	-p 50000:50000 \
	-v "${PWD}/jenkins_home:/var/jenkins_home" \
	-v "${PWD}/output:/var/output" \
	-v "/run/docker.sock:/run/docker.sock" \
	-v "/usr/bin/docker:/usr/bin/docker" \
	jenkins:dev

run:
	./run.sh

stop:
	docker stop jenkins-dev

restart: stop run

sh:
	docker exec -it jenkins-dev /bin/bash
