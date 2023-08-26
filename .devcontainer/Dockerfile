FROM mcr.microsoft.com/devcontainers/php:1-8.1-bullseye

# Install MariaDB client
RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \
    && apt-get install -y mariadb-client \ 
    && apt-get clean -y && rm -rf /var/lib/apt/lists/*

# Install php-mysql driver
RUN docker-php-ext-install mysqli pdo pdo_mysql

# install alt
RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \
    && apt-get install -y libjpeg-dev libwebp-dev libpng-dev \
    && apt-get clean -y && rm -rf /var/lib/apt/lists/*

RUN docker-php-ext-configure gd --with-jpeg
RUN docker-php-ext-install -j$(nproc) gd

# [Optional] Uncomment this section to install additional OS packages.
RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \
    && apt-get -y install --no-install-recommends calendar libicu-dev libzip-dev \
    && apt-get clean -y && rm -rf /var/lib/apt/lists/*

RUN docker-php-ext-configure calendar \
    &&  docker-php-ext-install calendar
RUN docker-php-ext-configure intl \
    &&  docker-php-ext-install intl
RUN docker-php-ext-configure zip \
    &&  docker-php-ext-install zip

RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \
    && apt-get -y install --no-install-recommends libc-client2007e-dev libkrb5-dev \
    && apt-get clean -y && rm -rf /var/lib/apt/lists/*

RUN docker-php-ext-configure imap --with-kerberos --with-imap-ssl \
    && docker-php-ext-install imap

# # rsh/ssh logins are disabled by default. Use this INI entry if you want to enable them.
# RUN sudo sed -i \
#     's/;\(imap.enable_insecure_rsh\).*/\1=0/' \
#     /usr/local/etc/php/php.ini*

# [Optional] Uncomment this line to install global node packages.
# RUN su vscode -c "source /usr/local/share/nvm/nvm.sh && npm install -g <your-package-here>" 2>&1
