# Composer Tools

A collection of PHP command-line tools with a global installer for Linux systems.
Allows you to run PHP related commands by referencing binary without path.
For example, instead of `./path/to/my/project/vendor/bin/phpunit` you can simply type `phpunit`. The commands would be accessible to every user on system.

See what tools are included at the end of this document. We provide sample communication with most frequent comamnds.

# How to install

## Prerequisite

Install Composer globally:

```bash
curl -sS https://getcomposer.org/installer | sudo php -- --install-dir=/usr/local/bin --filename=composer
```

## Fetch Composer tools

```bash
cd /usr/local/src
sudo git clone https://github.com/dvershinin/composer-tools.git
sudo ./composer-tools/install.sh
```

What it does: checks out this repostiry, creates symbolic links to binaries of PHP tools under */usr/local/bin/*.
Normally,this location is in PATH, so you are ready to run PHP commands.

# Update PHP tools

Easy update all via one command:

```bash
cd /usr/local/src/composer-tools && sudo git pull && sudo bash ./install.sh
```

# Included tools (links to documentation)

* [PHPUnit](https://phpunit.de/manual/current/en/writing-tests-for-phpunit.html) - unit testing
* [Phinx](http://docs.phinx.org/) - database versioning
  * `phinx migrate -e development` runs all of the available migrations
* [PHP CodeSniffer](https://github.com/squizlabs/PHP_CodeSniffer/wiki) detects violations of a defined coding standard
* [PHP Tags Tidier](http://fossil.include-once.org/phptags/index) automates the alteration of open and close tags in PHP scripts:
  * `phptags --whitespace *.php` cleans up spaces or UTF-8 BOM issues before opening and after close tags
  * `phptags --warn directory/` searches through a directory and just warns about whitespace issues
  * `phptags --close --long --tokenizer *.php` adds close tags, converts open tags into long form <?php and uses the more reliable --tokenizer mode (instead of --regex)
  * `phptags --unclosed --shortall dir/ ../*.tpl` includes/ converts all tags into short forms, and strips close tags of a document (it's advised to rather have whitespace issues fixed than keep using the newcomer workaround)
  * See also `--help` for the complete reference.
* [PHP Loc](https://github.com/sebastianbergmann/phploc)  quickly measures the size and analyzes the structure of a PHP project
  * `phploc /path/to/source`
* [PHP Mess Dector](http://phpmd.org/documentation/index.html) - takes a given PHP source code base and look for several potential problems within that source
  * `phpmd /path/to/source text unusedcode,naming`

# F.A.Q.
  * Why not use `compose global require`? Why store binaries under */usr/local/bin/* ?
    * Simple: if you install packages using "composer global require", then only single user will have access to the tool binaries. You might want to provide access to all system users (i.e. simple automatic deployment from git might need to run `phinx migrate` using website's user). Thus the best location for tool binaries is */usr/local/bin*.
