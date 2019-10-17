FROM php:7.2-apache-stretch

COPY docker/apache/vhost.conf /etc/apache2/sites-available/000-default.conf
COPY docker/php/php.ini /usr/local/etc/php/php.ini
COPY . /srv/app

RUN docker-php-ext-install pdo_mysql
