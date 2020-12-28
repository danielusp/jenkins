# Jenkins via Docker

Create the enviroment and download the image to run Jenkins

```bash
make build
```

Run Jenkins and install dependencies

```bash
make jenkins
```

- Access *http://localhost:8080/* and insert the administrator password. The password is displayed on terminal log. Press **Continue**.

- If you are not familiar with jenkins, select the option **Install suggested plugins**

- Create your admin account, save and continue.

- Enjoy Jenkins