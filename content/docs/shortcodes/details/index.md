---
title: "Details Shortcode"
linkTitle: "Details"
nav_weight: 1000
# nav_icon:
#   vendor: 
#   name: 
#   color: ''
featured: false
pinned: false
date: 2023-07-03T19:01:53+08:00
draft: false
series:
  - Docs
categories:
tags:
authors:
  - HugoMods
images:
---

The details shortcode specifies additional details that the user can open and close on demand.

<!--more-->

## Syntax

```markdown
{{%/* details [summary] [open] */%}}
```

## Parameters

{{% shortcode-params "data/params.toml" %}}

## Examples

### Collapsed Details Example

{{% details "hello.php" %}}
```php
echo "Hello world!";
```
{{% /details %}}

Source code.

````markdown
{{%/* details "hello.php" */%}}
```php
echo "Hello world!";
```
{{%/* /details */%}}
````

### Expanded Details Example

{{% details "hello.js" true %}}
```js
console.log("Hello world!");
```
{{% /details %}}

Source code.

````markdown
{{%/* details "hello.js" true */%}}
```js
console.log("Hello world!");
```
{{%/* /details */%}}
````
