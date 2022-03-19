This framework lets you quickly dockerize an existing Laravel application.

Steps:

1. Clone the framework into a subdir of your Laravel project, e.g. ".deploy":

```shell
cd path/to/laravel/project
mkdir .deploy
cd .deploy
git clone https://github.com/neskhodovskiy/docker-framework .
```

2. Tweak the environment to your needs.

```shell
cp .env.example .env
nano .env
```

3. (Optional) If you don't have your own nginx-proxy running, use the one that comes with this framework. Make sure port 80 is free.

```shell
docker-compose -f docker-compose.common.yml up -d dockergen nginx-proxy
```

4. Run the other common containers (db, redis, dockerhost for xdebug):

```shell
docker-compose -f docker-compose.common.yml up -d 
```

5. Run your app using any combination of containers you need, depending on your project:

```shell
docker-compose up -d php-fpm horizon cron 
```

6. If necessary, you can use the provided php-cli container for running command-line operations, like composer install and artisan commands.

```shell
docker-compose run --rm php-cli bash -l
```

Using the login shell (as above) gives you a number of useful aliases inside the container:

```shell
xon # enable xdebug for command line scripts
xoff # disable xdebug for command line scripts
art # php artisan
tinker # php artisan tinker
test # php artisan test 
```

You can see all available aliases and add your own in etc/bash/aliases.sh
