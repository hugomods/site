---
title: "Installation"
linkTitle: "Installation"
description: "How to install extended Hugo shortcodes module"
nav_weight: 1
# nav_icon:
#   vendor: 
#   name: 
#   color: ''
featured: false
pinned: false
date: 2023-11-24T11:42:19+08:00
draft: false
series:
  - Docs
categories:
  - Shortcodes
tags:
authors:
  - HugoMods
images:
---

{{< module "github.com/hugomods/shortcodes" >}}

{{< bs/config-toggle "hugo" >}}
module:
  imports:
  - path: github.com/hugomods/shortcodes
{{< /bs/config-toggle >}}
