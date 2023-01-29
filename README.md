# docker_nginx_test
Project to test nginx using docker

# Desciption

This project will generate two containers using docker.
One container runs an html web server using nginx.
The other container runs nginx as a reverse proxy for the web server.

# Run instructions

## Using docker run

```bash
docker build -t nserver --target server .
docker build -t nproxy --target proxy .

docker run -d -p 8080:80 --name nserver nserver
docker run -d -p 8081:80 --name nproxy nproxy
```

## Using docker compose

```bash
docker compose up -d
```
