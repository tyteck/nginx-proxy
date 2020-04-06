# nginx-letsencrypt-pack

## introduction 

This is a docker-compose wrapper for the docker images :
* [nginx-proxy/nginx-proxy](https://github.com/nginx-proxy/nginx-proxy) and
* [nginx-proxy/docker-letsencrypt-nginx-proxy-companion](https://github.com/nginx-proxy/docker-letsencrypt-nginx-proxy-companion) 


## install 

```
git clone https://github.com/tyteck/nginx-proxy.git 
```

## start

```
docker-compose -f docker-compose.yml -f docker-compose.prod.yml up -d
```
