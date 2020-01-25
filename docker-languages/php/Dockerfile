FROM php:7.4.1-apache-buster AS common

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        default-mysql-client \
    && docker-php-ext-install -j$(nproc) pdo pdo_mysql


FROM common AS build 

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        git libzip-dev zip unzip \
    && docker-php-ext-install -j$(nproc) zip \
    && curl --silent --show-error https://getcomposer.org/installer \
    | php  -- --install-dir=/usr/local/bin --filename=composer

COPY composer.* /var/www/html/
RUN composer install --prefer-dist --optimize-autoloader

COPY index.php /var/www/html/


FROM common

COPY --from=build /var/www/html /var/www/html