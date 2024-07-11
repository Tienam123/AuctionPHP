FROM php:8.2-cli-alpine



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

RUN apk update && apk add unzip

ENV COMPOSER_ALLOW_SUPERUSER 1

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/bin --filename=composer --quiet

WORKDIR /app