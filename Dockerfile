FROM php:7.0.2-apache
VOLUME /var/www/html/
RUN touch /var/www/html/file_generated_inside_the_container
