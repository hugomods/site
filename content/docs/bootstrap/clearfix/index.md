---
title: "Bootstrap Clearfix Shortcode"
linkTitle: "Clearfix"
nav_weight: 1000
nav_icon:
  vendor: bs
  name: file-earmark-richtext
featured: false
pinned: false
date: 2023-03-24T12:05:10+08:00
draft: false
series:
  - Docs
  - Modules
categories:
  - Bootstrap
  - Shortcode
tags:
  - Clearfix
authors:
  - HugoMods
images:
---

Quickly and easily clear floated content within a container by wrapping the content inside the `bootstrap/clearfix` shortcode.

<!--more-->

## Syntax

```markdown
{{%/* bs/clearfix */%}}
FLOATING CONTENT.
{{%/* /bs/clearfix */%}}
```

## Examples

{{% bootstrap/clearfix %}}
![Float Start](images/example.jpg?width=200px#float-start) Clearfix the floating content by wrapping it inside the `bs/clearfix` shortcode.
{{% /bootstrap/clearfix %}}

{{% bs/clearfix %}}
![Float End](images/example.jpg?width=200px#float-end) Clearfix the floating content by wrapping it inside the `bootstrap/clearfix` shortcode.
{{% /bs/clearfix %}}
