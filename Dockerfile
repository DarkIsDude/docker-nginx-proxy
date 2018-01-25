 FROM nginx

LABEL MAINTAINER="Edouard COMTET<edouard.comtet@gmail.com>"
LABEL version="1.0"

COPY ./default.conf /etc/nginx/conf.d/default.conf.template

EXPOSE 80

CMD envsubst '${NGINX_URL}' < /etc/nginx/conf.d/default.conf.template > /etc/nginx/conf.d/default.conf && nginx -g 'daemon off;'
