# Composer Tools

A collection of PHP command-line tools with a global installer for Linux systems.
Allows you to run PHP related commands by referencing binary without path:
phpunit instead of ./path/to/my/project/vendor/bin/phpunit

See what's included at the end of this document. We provide sample communication with most frequent comamnds.

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

# Included tools (links to documentation)

* [PHPUnit](https://phpunit.de/manual/current/en/writing-tests-for-phpunit.html) - unit testing
* [Phinx](http://docs.phinx.org/) - database versioning
* [PHP CodeSniffer](https://github.com/squizlabs/PHP_CodeSniffer/wiki) detects violations of a defined coding standard
* [PHP Tags Tidier](http://fossil.include-once.org/phptags/index) automates the alteration of open and close tags in PHP scripts:
  * phptags --whitespace *.php cleans up spaces or UTF-8 BOM issues before opening and after close tags
  * phptags --warn directory/ searches through a directory and just warns about whitespace issues
  * phptags --close --long --tokenizer *.php adds close tags, converts open tags into long form <?php and uses the more reliable --tokenizer mode (instead of --regex)
  * phptags --unclosed --shortall dir/ ../*.tpl includes/ converts all tags into short forms, and strips close tags of a document (it's advised to rather have whitespace issues fixed than keep using the newcomer workaround)
  * See also --help or the manpage ^ for the complete reference.