# Expertland

## Pre-requisites

- PHP 7.4

- MySQL 5.7

## Usage

The following sections describe dockerized environment.

Just keep versions of installed software to be consistent with the team and production environment (see [Pre-requisites](#pre-requisites) section).

```bash
cp .env.example .env
docker-compose up -d
docker-compose exec app composer install
docker-compose exec app php artisan key:generate
docker-compose exec app php artisan migrate --seed
```


App is available on [http://localhost:8000](http://localhost:8000).

In case you use your own environment, make sure you configured services correctly in the `.env` file.



## Laravel IDE Helper

Laravel IDE Helper have installed in the project.

For ease of development, you can run the data generation function for the Laravel IDE Helper.
```bash
docker-compose exec app php artisan ide-helper:generate
docker-compose exec app php artisan ide-helper:models -N
docker-compose exec app php artisan ide-helper:meta
```

## XDebug

We use it for debugging XDebug 3. It has been installed in the Docker env. Instruction for install XDebug in the PHPStorm in this link - https://habr.com/ru/post/540072/

N.B. XDebug has been installed in docker-compose, you should start setting from the PHPStorm.


## PHP-CS-Fixer
Instruction for install PHP-CS-Fixer in the PHPStorm in this link - https://si-dev.com/ru/blog/how-to-format-code-in-phpstorm-using-php-cs-fixer
To change some rules use https://github.com/FriendsOfPHP/PHP-CS-Fixer/blob/3.0/doc/rules/index.rst
N.B. You should start setting from the PHPStorm.

## Useful links

- [Laravel docs](https://laravel.com/docs/7.x/installation)
