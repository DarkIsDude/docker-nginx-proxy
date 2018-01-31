#!/bin/bash

if [ -z ${NGINX_SCHEMA+x} ]
then
    export NGINX_SCHEMA="\$scheme"
fi

envsubst '${NGINX_URL},${NGINX_SCHEMA}' < /etc/nginx/conf.d/default.conf.template > /etc/nginx/conf.d/default.conf

nginx -g 'daemon off;'
