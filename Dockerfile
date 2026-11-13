FROM phpswoole/swoole:4.8-php8.0-alpine@sha256:a24267a8bfb29e66dde574fecee3f76ac4547a8532a78bb0253b84b420f1d282

WORKDIR /app

COPY composer.lock /app
COPY composer.json /app

RUN composer install

COPY . /app

EXPOSE 8080

CMD [ "php", "app/server.php" ]
