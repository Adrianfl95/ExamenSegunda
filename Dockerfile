FROM ubuntu:latest

RUN apt-get update && apt-get install -y \
    apache2 \
    php \
    git \
    php

EXPOSE 80

WORKDIR /var/www/html

RUN git clone https://github.com/Adrianfl95/PPS_ArchivoPhp.git

CMD ["apache2ctl", "-D", "FOREGROUND"]
