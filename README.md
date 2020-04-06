# nginx-letsencrypt-pack

## introduction 

This is a docker-compose wrapper for the docker images :
* [nginx-proxy/nginx-proxy](https://github.com/nginx-proxy/nginx-proxy) and
* [nginx-proxy/docker-letsencrypt-nginx-proxy-companion](https://github.com/nginx-proxy/docker-letsencrypt-nginx-proxy-companion) 

nginx-proxy is *capturing* the web port (80) and act like a proxy on every request.
It allows some nice feature like :
* setting a website with a VIRTUAL_HOST environment variable (in another container)
* allowing only localhost to access one service 
* package a ssl certificate with letsencrypt companion

My contribution is only packaging all in a `docker-compose.yml` file to launch it more easily.

## install 

```
git clone https://github.com/tyteck/nginx-proxy.git 
```

## start

```
docker network create nginx-proxy
docker-compose -f docker-compose.yml -f docker-compose.prod.yml up -d
```
