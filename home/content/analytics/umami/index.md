---
type: docs
title: "Hugo Umami Analytics Module"
linkTitle: "Umami Analytics"
description: "Umami is an open-source, privacy-focused web analytics tool that serves as an alternative to Google Analytics."
nav_weight: 5
nav_icon:
  vendor: simple
  name: umami
featured: true
pinned: false
date: 2024-10-13T13:15:15+08:00
draft: false
series:
  - Docs
categories:
  - Modules
  - Analytics
tags:
  - Umami Analytics
authors:
  - HugoMods
images:
menu:
  main:
    parent: analytics
    params:
      icon:
        vendor: simple
        name: umami
---

{{< module "github.com/hugomods/umami-analytics" >}}

## Installation

### Import the Module

{{< import-module "github.com/hugomods/umami-analytics" >}}

### Import the Template

{{% skip-if-hugopress %}}

{{< page-resource-content "data/template" >}}

{{% params data="data/site-config.yaml" file="hugo" heading="Site Configuration" %}}

## Site Configuration Example

{{< page-resource-content "data/site-config-example" >}}

{{% params data="data/page-params.yaml" heading="Page Parameters" %}}
