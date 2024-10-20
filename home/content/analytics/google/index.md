---
type: docs
title: "Hugo Google Analytics Module"
linkTitle: "Google Analytics"
description: Google Analytics is a free Web analytics service that provides statistics and basic analytical tools for search engine optimization (SEO) and marketing purposes.
nav_weight: 1
nav_icon:
  vendor: simple
  name: googleanalytics
  color: "#e37400"
featured: false
pinned: false
date: 2023-03-29T10:14:12+08:00
draft: false
series:
  - Docs
categories:
  - Module
  - Analytics
tags:
  - Google Analytics
authors:
  - HugoMods
images:
menu:
  main:
    parent: analytics
    params:
      icon:
        vendor: simple
        name: googleanalytics
        color: "#e37400"
aliases:
  - /en/docs/google-analytics
  - /docs/analytics/google
---

{{< module "github.com/hugomods/google-analytics" >}}

## Installation

### Import the Module

{{< import-module "github.com/hugomods/google-analytics" >}}

### Import the Template

{{% skip-if-hugopress %}}

{{< page-resource-content "data/template" >}}

{{% params data="data/site-config.yaml" heading="Site Configuration" %}}

## Site Configuration Example

{{< page-resource-content "data/site-config-example" >}}

{{% params data="data/page-params.yaml" heading="Page Parameters" %}}
