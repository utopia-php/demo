FROM phpswoole/swoole:4.6-php7.4-alpine

WORKDIR /app

COPY composer.lock /app
COPY composer.json /app

RUN composer install

COPY . /app

EXPOSE 8080

CMD [ "php", "app/server.php" ]
