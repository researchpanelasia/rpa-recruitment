.PHONY: init get-composer composer-update test

all: composer-update

init: get-composer

get-composer:
	curl -sS https://getcomposer.org/installer | php

composer-update:
	php composer.phar update

test:
	./vendor/bin/phpunit test
