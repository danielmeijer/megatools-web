#!/bin/bash

set -e

chown -R www-data:www-data /var/www

php-fpm7.0 -g /var/run/php/php7.0-fpm.pid 
exec "nginx" -g "daemon off;"
