FROM gitpod/workspace-mysql:latest
# gitpod/workspace-mysql:branch-mysql-8.0

# # MySQL: root / ''
# # optional: use a custom apache config.
# COPY apache.conf /etc/apache2/apache2.conf

# optional: change document root folder. It's relative to your git working copy.
# ENV APACHE_DOCROOT_IN_REPO="htdocs"

# # ;imap.enable_insecure_rsh=0

RUN sudo apt update && \
    sudo DEBIAN_FRONTEND=noninteractive apt install -yqq php-imap

RUN sudo sed -i \
    's/;\(imap.enable_insecure_rsh\).*/\1=0/' \
    /etc/php/8.2/apache2/php.ini

# # Change your version here
# RUN sudo update-alternatives --set php $(which php8.1)

# RUN sudo DEBIAN_FRONTEND=noninteractive apt install -yqq php8.1-gd php8.1-curl php8.1-zip php8.1-mbstring php8.1-mysql &&
#     yes N | sudo DEBIAN_FRONTEND=noninteractive apt install -yqq libapache2-mod-php8.1

# RUN sudo a2dismod php8.2 &&
#     sudo a2enmod php8.1
#     # sudo -E a2dismod mpm_prefork mpm_event &&
#     # mpm_worker
#     # sudo -E a2enmod mpm_prefork mpm_event
