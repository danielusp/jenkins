# Jenkins via Docker

## Jenkins install
Create the enviroment and download the image to run Jenkins

```bash
make build
```

Run Jenkins and install dependencies

```bash
make install
```

- Access *http://localhost:8080/* and insert the administrator password. The password is displayed on terminal log. Press **Continue**.

- If you are not familiar with jenkins, select the option **Install suggested plugins**

- Create your admin account, save and continue.
## Jenkins run

After install, just run

```bash
make run
```

## Restart

```bash
make restart
```

## Resources

Jenkinsfile guide

- https://www.jenkins.io/doc/book/pipeline/jenkinsfile/

Pipeline Syntax

- https://www.jenkins.io/doc/book/pipeline/syntax/

NodeJS plugin

- https://plugins.jenkins.io/nodejs/

Pipeline Best Practices

- https://www.jenkins.io/doc/book/pipeline/pipeline-best-practices/