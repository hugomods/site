---
title: "Markdown Syntax And URL Syntax"
linkTitle: "Syntaxes"
description: Describe the Markdown Syntax and URL syntax in detail.
nav_weight: 2
nav_icon:
  vendor: bs
  name: link
  className: text-primary
date: 2023-03-23T16:17:36+08:00
categories:
  - Docs
tags:
  - URL
  - Markdown
authors:
  - HugoMods
---

## Markdown Syntax

```abnf
![alt](url [caption])
```

- `!`: must starts with a exclamation mark.
- `alt`: alternative text.
- `url`: the image URL.
- `caption`: image caption shown below the image, optional.

## URL Syntax

```abnf
URL = [scheme ":" "//"] path ["?" query] ["#" fragment]
```

- `scheme`: `http` or `https`, required for external images.
- `path`: the path name of images.
- `query`: the query string preceded by a question mark (`?`), which is ampersand-separated (`&`) key-value pairs, such as `foo=bar&fizz=buzz`.
- `fragment`: the fragment ID preceded by a hash (`#`).

## Example

{{% bootstrap/clearfix %}}
![Example](/images/great-wall.jpg?crop=300x120&brightness=-30#float-end "Example caption") For example, `![Example](/images/great-wall.jpg?crop=300x120&brightness=-30#float-end "Example caption")`, where

- `Example` represents the alternative text.
- The `path` is `/images/great-wall.jpg`.
- The `query` is `crop=300x120&brightness=-30` to _crop_ the image in size `300x120`, change the _brightness_ as `-30`.
- The `fragment` is `float-end` to float the image to the end (right).
- `Example caption` represents the caption shown below the image.
{{% /bootstrap/clearfix %}}
