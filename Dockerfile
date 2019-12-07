FROM nginx:latest

RUN apt-get update && \
    apt-get install -y megatools php php-fpm php-cli

ADD ./megatools-files /var/www/
ADD ./docker-files/entrypoint.sh /

# NGINX
RUN rm -rf /etc/nginx/conf.d/*
ADD ./docker-files/.htpasswd /var/.htpasswd
ADD ./docker-files/megatools.conf /etc/nginx/conf.d/
RUN sed -i "/user  nginx;/c\user  www-data;" /etc/nginx/nginx.conf 

RUN mkdir /run/php


CMD bash /entrypoint.sh
EXPOSE 80 443