FROM php:8.2-apache

WORKDIR /var/www/html

# Mod Rewrite
RUN a2enmod rewrite

ADD https://github.com/mlocati/docker-php-extension-installer/releases/latest/download/install-php-extensions /usr/local/bin/

# Linux Library
RUN apt-get update -y && apt-get install -y \
    libicu-dev \
    libmariadb-dev \
    unzip zip \
    zlib1g-dev \
    libpng-dev \
    libjpeg-dev \
    libfreetype6-dev \
    libjpeg62-turbo-dev \
    libpng-dev

#composer
COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

#install-node-js
RUN curl -sL https://deb.nodesource.com/setup
RUN apt-get install -yq nodejs build-essential
RUN apt-get install -yq npm

RUN chmod +x /usr/local/bin/install-php-extensions && sync && \
    install-php-extensions gettext intl mbstring pdo_mysql zip exif pcntl gd

RUN docker-php-ext-configure gd --enable-gd --with-freetype --with-jpeg \
    && docker-php-ext-install -j$(nproc) gd
