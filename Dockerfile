FROM phpdockerio/php72-fpm:latest
WORKDIR "/application"

# Install selected extensions and other stuff
RUN apt-get update \
    && apt-get -y --no-install-recommends install  php-memcached php7.2-mysql \
    php-redis php7.2-sqlite3 php7.2-ldap php7.2-gd php-mongodb php7.2-xsl php-yaml php-zmq \
    php-xdebug \
    && apt-get clean; rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* /usr/share/doc/*
