# PHP

## Table of Contents

* [Interactive shell](#interactive-shell)
* [Injection](#injection)
* [Usefull functions](#usefull-functions)

Created by [gh-md-toc](https://github.com/ekalinin/github-markdown-toc.go)

## Interactive shell

```bash
php -a
```

## Injection

*method*: `eval`

* A non-quoted symbol is forced into a string when indexing some index
  ```php
  system[0] == 's'
  ```
  Might not work is PHP > ? (8?). Warning in PHP 7
* You can invoke function with names dynamically built by surrounding the name with parenthesis
  ```php
  ("php" . "info")()
  ```

## Usefull functions

* `phpinfo`: returns env variables, global vars, config, ...
* `system`: runs a command
* `getallheaders`
