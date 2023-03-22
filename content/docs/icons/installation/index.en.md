---
title: "Install Icons Module"
linkTitle: "Installation"
date: 2023-02-12T22:40:20+08:00
draft: false
nav_weight: 3
series:
  - Modules
categories:
  - Icons
tags:
  - Installation
authors:
  - HugoMods
---

This article shows how to install [supported icons vendors]({{< ref "docs/icons/vendors" >}}).

<!--more-->

Just import the icons vendors you want into configuration file.

{{< bootstrap/config-toggle filename=hugo >}}
[[module.imports]]
path = "github.com/hugomods/icons/vendors/bootstrap"

[[module.imports]]
path = "github.com/hugomods/icons/vendors/font-awesome"

[[module.imports]]
path = "github.com/hugomods/icons/vendors/simple-icons"
{{< /bootstrap/config-toggle >}}
