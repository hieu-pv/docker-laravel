FROM php:7.2.6-fpm

RUN apt-get update && apt-get install -y \
    mysql-client libmagickwand-dev --no-install-recommends \
    && pecl install imagick \
    && docker-php-ext-enable imagick \
    && docker-php-ext-install pdo_mysql
