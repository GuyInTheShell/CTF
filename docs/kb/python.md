# Python

## Table of Contents

* [Interactive shell](#interactive-shell)
* [Injection](#injection)
  * [What to inject](#what-to-inject)
  * [How to inject](#how-to-inject)
    * [Template string injection](#template-string-injection)

Created by [gh-md-toc](https://github.com/ekalinin/github-markdown-toc.go)

## Interactive shell

```bash
ipython
```

## Injection

### What to inject

* Check [`inspect`](https://docs.python.org/3/library/inspect.html)
* From a python object, get all the globals (incl. vars, functions, classes)
  ```python
  {0.__init__.__globals__}
  ```
* From a function, get its code
  ```python
  foo.__code__
  ```

### How to inject

#### Template string injection

* Try to inject just a placeholder to see if params are passed
  ```python
  '{0}'
  ```
* Try to act on the object now
  ```python
  {0.__init__.__globals__[app].url_map}
  ```
  See [Leaking information](#leaking-information)
