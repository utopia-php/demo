FROM phpswoole/swoole:4.6-php8.0-alpine@sha256:8814cf208c3980069c487414d4d6b3598ad1a4f83de50ec3c79806392e3ecd85

WORKDIR /app

COPY composer.lock /app
COPY composer.json /app

RUN composer install

COPY . /app

EXPOSE 8080

CMD [ "php", "app/server.php" ]
