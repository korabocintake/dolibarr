# FROM ://mcr.microsoft.com
FROM mcr.microsoft.com/devcontainers/php:3-8.2-bookworm

# Dolibarrに必要なPHP拡張機能のインストール
RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \
    && apt-get -y install --no-install-recommends \
    libicu-dev \
    libpng-dev libjpeg-dev libfreetype6-dev \
    libldap2-dev libzip-dev \
    mariadb-client \
    && docker-php-ext-configure gd --with-freetype --with-jpeg \
    && docker-php-ext-install -j$(nproc) gd mysqli pdo_mysql ldap zip intl \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

#     'icu-uc','icu-io','icu-i18n'  required by 'virtual:world', not found => install libicu-dev

# nodejs is needed for Github Runner instance
RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \
    && apt-get -y install --no-install-recommends \
    task nodejs npm \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*
