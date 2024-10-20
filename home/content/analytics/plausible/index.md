---
type: docs
title: "Hugo Plausible Analytics Module"
linkTitle: "Plausible Analytics"
description: Plausible is a lightweight and open-source Google Analytics alternative.
nav_weight: 4
nav_icon:
  vendor: simple
  name: plausibleanalytics
  color: '#5850EC'
featured: false
pinned: false
date: 2023-06-20T09:13:53+08:00
series:
  - Docs
categories:
  - Modules
  - Analytics
tags:
  - Plausible Analytics
authors:
  - HugoMods
images:
menu:
  main:
    parent: analytics
    params:
      icon:
        vendor: simple
        name: plausibleanalytics
        color: '#5850EC'
aliases:
  - /docs/analytics/plausible
---

{{% module "github.com/hugomods/plausible-analytics" %}}

## Installation

### Import the Module

{{< import-module "github.com/hugomods/plausible-analytics" >}}

### Import the Template

{{% skip-if-hugopress %}}

{{< page-resource-content "data/template" >}}

{{% params data="data/site-config.yaml" heading="Site Configuration" %}}

## Site Configuration Example

{{< page-resource-content "data/site-config-example" >}}

{{% params data="data/page-params.yaml" heading="Page Parameters" %}}

## Page Parameters Example

{{< page-resource-content "data/page-params-example" >}}

