FROM php:8.0-apache
RUN a2enmod rewrite

RUN apt-get update && apt-get install -y \
        sendmail \
        libfreetype6-dev \
        libjpeg62-turbo-dev \
        libmcrypt-dev \
        libpng-dev \
        zlib1g-dev \
        libxml2-dev \
        libzip-dev \
        libonig-dev \
        graphviz \
    && rm -rf /var/lib/apt/lists/* \
    && docker-php-ext-configure gd \
    && docker-php-ext-install -j$(nproc) gd \
    && docker-php-ext-install pdo pdo_mysql \
    && docker-php-ext-install mysqli \
    && docker-php-ext-install zip \
    && docker-php-source delete

COPY --from=composer:latest /usr/bin/composer /usr/local/bin/composer
