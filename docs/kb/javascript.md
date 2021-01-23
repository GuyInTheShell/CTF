# Javascript

## Table of Contents

* [Interactive shell](#interactive-shell)
* [Injection](#injection)
  * [What to inject](#what-to-inject)
  * [How to inject](#how-to-inject)
    * [Prototype pollution](#prototype-pollution)

Created by [gh-md-toc](https://github.com/ekalinin/github-markdown-toc.go)

## Interactive shell

```bash
node
```

## Injection

### What to inject

### How to inject

#### Prototype pollution

Objects of the "base" class share the same `__proto__`.  
When you see a double indexed access `variable[x][y]`, it is the opportunity to mess with the
shared proto
```javascript
> b = {'bar': 'baz'}
{ bar: 'baz' }
> c = {foo: 1}
{ foo: 1 }
> b['__proto__']['key'] = 'random'
'random'
> c.__proto__.key
'random'
```
