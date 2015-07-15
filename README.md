# Composer Tools

A collection of PHP command-line tools with a global installer for Linux systems.
Allows you to run PHP related commands by referencing binary without path:
phpunit instead of ./path/to/my/project/vendor/bin/phpunit

# Included tools (links to documentation)

* [PHPUnit](https://phpunit.de/manual/current/en/writing-tests-for-phpunit.html) - unit testing
* [Phinx](http://docs.phinx.org/) - database versioning
* [PHP CodeSniffer](https://github.com/squizlabs/PHP_CodeSniffer/wiki) detects violations of a defined coding standard



# How to install

## Prerequisite

Install Composer globally:

```
curl -sS https://getcomposer.org/installer | sudo php -- --install-dir=/usr/local/bin --filename=composer
```

## Fetch Composer tools

```
cd /usr/local/src
sudo git clone https://github.com/dvershinin/composer-tools.git
sudo ./composer-tools/install.sh
```

What it does: checks out this repostiry, creates symbolic links to binaries of PHP tools under /usr/local/bin/.
Normally,this location is in PATH, so you are ready to run PHP commands.

# Update PHP tools

Easy update all via one command:

```
cd /usr/local/src/composer-tools && sudo git pull && sudo bash ./install.sh
```