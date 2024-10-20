---
type: docs
title: "Hugo Cloudflare Analytics Module"
linkTitle: "Cloudflare Analytics"
description: "Cloudflare Analytics provides free, privacy-first analytics for your website."
nav_weight: 6
nav_icon:
  vendor: simple
  name: cloudflare
  color: '#F6821F'
featured: true
pinned: false
date: 2024-10-14T13:13:15+08:00
draft: false
series:
  - Docs
categories:
  - Modules
  - Analytics
tags:
  - Cloudflare Analytics
authors:
  - HugoMods
images:
menu:
  main:
    parent: analytics
    params:
      icon:
        vendor: simple
        name: cloudflare
        color: '#F6821F'
---

{{< module "github.com/hugomods/cloudflare-analytics" >}}

## Installation

### Import the Module

{{< import-module "github.com/hugomods/cloudflare-analytics" >}}

### Import the Template

{{% skip-if-hugopress %}}

{{< page-resource-content "data/template" >}}

{{% params data="data/site-config.yaml" file="hugo" heading="Site Configuration" %}}

## Site Configuration Example

{{< page-resource-content "data/site-config-example" >}}

{{% params data="data/page-params.yaml" heading="Page Parameters" %}}
