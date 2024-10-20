---
type: docs
title: "Hugo Microsoft Clarity Analytics Module"
linkTitle: "Microsoft Clarity"
description: "Microsoft Clarity Analytics is a free service that captures how people use your site."
nav_weight: 3
nav_icon:
  vendor: bs
  name: microsoft
  color: '#0E7BD8'
featured: true
pinned: false
date: 2023-11-16T01:43:15+08:00
draft: false
series:
  - Docs
categories:
  - Modules
  - Analytics
tags:
  - Microsoft Clarity
authors:
  - HugoMods
images:
  - https://claritystatic.azureedge.net/images/homepageBannerV2.png
menu:
  main:
    parent: analytics
    params:
      icon:
        vendor: bs
        name: microsoft
        color: '#0E7BD8'
aliases:
  - /docs/analytics/microsoft-clarity
---

{{< module "github.com/hugomods/microsoft-clarity" >}}

## Installation

### Import the Module

{{< import-module "github.com/hugomods/microsoft-clarity" >}}

### Import the Template

{{% skip-if-hugopress %}}

{{< page-resource-content "data/template" >}}

{{% params data="data/site-config.yaml" file="hugo" heading="Site Configuration" %}}

## Site Configuration Example

{{< page-resource-content "data/site-config-example" >}}

{{% params data="data/page-params.yaml" heading="Page Parameters" %}}
