FROM php:8.1

RUN docker-php-ext-install pdo pdo_mysql mysqli

RUN apt-get update && apt-get install -y zip

COPY ./app /var/www/html

EXPOSE 8081
    
CMD ["sh", "-c", "sleep 30 && cd /var/www/html/ && php install.php && php -S 0.0.0.0:8082 -t /var/www/html"]
