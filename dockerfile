FROM ubuntu:latest

LABEL author = "dev vedant"

RUN apt-get update && \
    apt-get install apache2 unzip -y 


ADD https://templatemo.com/download/templatemo_605_xmas_countdown /var/www/html/ 



RUN rm -rf /var/www/html/index.html && \
    unzip /var/www/html/templatemo_605_xmas_countdown.zip -d /var/www/html/ && \
    mv /var/www/html/templatemo_605_xmas_countdown/* /var/www/html/ 


EXPOSE 80 



CMD ["apache2ctl", "-D", "FOREGROUND"]


