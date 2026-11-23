FROM phpswoole/swoole:5.1-php8.0-alpine@sha256:cede4ceac21bad99fd1d979eff7e1e8527835790e2e99d147aa813fadf5e9ad7

WORKDIR /app

COPY composer.lock /app
COPY composer.json /app

RUN composer install

COPY . /app

EXPOSE 8080

CMD [ "php", "app/server.php" ]
