# docker-nginx-proxy

With this container, you can create a really reverse proxy (not just redirecting!).

To do that, simply:

```
docker run --rm -it -p 4000:80 --name nginx \
  -e NGINX_URL=https://ecomtet.com \
  nginx-proxy
```

* NGINX_URL is the url of proxy

Envoy.
