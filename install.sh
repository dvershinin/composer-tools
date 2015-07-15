#!/bin/bash

cd "$( dirname "${BASH_SOURCE[0]}")"
composer update

sudo ln -sf /usr/local/src/composer-tools/vendor/bin/phpunit /usr/local/bin/
sudo ln -sf /usr/local/src/composer-tools/vendor/bin/phpcs /usr/local/bin/
sudo ln -sf /usr/local/src/composer-tools/vendor/bin/phpcbf /usr/local/bin/
sudo ln -sf /usr/local/src/composer-tools/vendor/bin/phinx /usr/local/bin/
