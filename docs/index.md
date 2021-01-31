# Tools

* [Tooling](tooling.md)

# Knowledge Base

# Pwn

* [ROP/SROP](kb/pwn/rop_srop.md)

# Web

## Methodology

* Looks for injection points (URL params, cookies, POST body, ...)
* Try to inject values
  * SQL injection
  * Template injection if the parameter is reflected in the page somewhere
  * Try payload containing `*` or `?` to see if the result might come from a filesystem
* Everywhere that accepts JSON, try XML
* When you get an error, try to control the return message
* When you get an error, try to understand if it happens before of after the parsing (can you inject
  something in the parsing phase?

## Attacks

* [GraphQL](kb/web/graphql.md)
* [Javascript](kb/web/javascript.md)
* [PHP](kb/web/php.md)
* [Python](kb/web/python.md)
* [Server Side Template Injection](kb/web/server_side_template_injection.md)

# Misc

* [Shell](kb/misc/shell.md)
