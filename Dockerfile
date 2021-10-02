FROM php:7.2-apache
COPY public/ /var/www/html/
RUN docker-php-ext-install mysqli
RUN docker-php-ext-enable mysqli
RUN apt-get update && apt-get install -y \
    git \
    nano \
    jq

