---
type: docs
title: "Hugo Baidu Analytics Module"
linkTitle: "Baidu Analytics"
description: "Baidu Analytics is a powerful and thorough tool for collecting accurate analytics from a campaign."
nav_weight: 10
nav_icon:
  vendor: simple
  name: baidu
  color: '#4E6EF2'
featured: true
pinned: false
date: 2024-10-14T12:05:15+08:00
draft: false
series:
  - Docs
categories:
  - Modules
  - Analytics
tags:
  - Baidu Analytics
authors:
  - HugoMods
images:
menu:
  main:
    parent: analytics
    params:
      icon:
        vendor: simple
        name: baidu
        color: '#4E6EF2'
---

{{< module "github.com/hugomods/baidu-analytics" >}}

## Installation

### Import the Module

{{< import-module "github.com/hugomods/baidu-analytics" >}}

### Import the Template

{{% skip-if-hugopress %}}

{{< page-resource-content "data/template" >}}

{{% params data="data/site-config.yaml" file="hugo" heading="Site Configuration" %}}

## Site Configuration Example

{{< page-resource-content "data/site-config-example" >}}

{{% params data="data/page-params.yaml" heading="Page Parameters" %}}
