FROM php:8.2-fpm-alpine


# Install dependencies
RUN apk update && apk add --no-cache \
    autoconf \
    g++ \
    make \
    linux-headers \
    && pecl install xdebug \
    && docker-php-ext-enable xdebug

RUN mv $PHP_INI_DIR/php.ini-development $PHP_INI_DIR/php.ini

COPY ./conf.d /usr/local/etc/php/conf.d

WORKDIR /app