FROM ubuntu:latest

RUN apt-get update && \
    apt-get install -y apache2 && \
    rm /var/www/html/index.html  # Remove the default index.html

COPY ./ /var/www/html/

EXPOSE 80

CMD ["apachectl", "-D", "FOREGROUND"]
