FROM debian:latest

RUN apt-get update
RUN apt-get install -y nano apache2 net-tools

WORKDIR /var/www/html
RUN rm index.html

COPY ./web/ .

WORKDIR /etc/apache2/sites-enabled
RUN rm 000-default.conf

COPY ./000-default/ .

EXPOSE 80
CMD ["apachectl", "-D", "FOREGROUND"]

WORKDIR /