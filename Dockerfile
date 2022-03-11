FROM php:7

RUN apt-get update && apt-get dist-upgrade -y

# system utilities
RUN apt-get install -y wget

# composer
RUN wget https://getcomposer.org/download/latest-stable/composer.phar
RUN chmod +x ./composer.phar && mv ./composer.phar /usr/local/bin/composer

WORKDIR /app