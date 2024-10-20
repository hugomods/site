---
type: docs
title: "Hugo Minimal Google Analytics Module"
linkTitle: "Minimal Google Analytics"
description: Minimal Google Analytics record page views, site searches, scrolls and file downloads on your website without loading official, heavy tracking library.
nav_weight: 2
nav_icon:
  vendor: simple
  name: googleanalytics
  color: "#e37400"
featured: false
pinned: false
date: 2024-10-11T20:34:12+08:00
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
  - /docs/analytics/google
---

{{< module "github.com/hugomods/minimal-google-analytics" >}}

## Installation

### Import the Module

{{< import-module "github.com/hugomods/minimal-google-analytics" >}}

### Import the Template

{{% skip-if-hugopress %}}

{{< page-resource-content "data/template" >}}

{{% params data="data/site-config.yaml" heading="Site Configuration" %}}

## Site Configuration Example

{{< page-resource-content "data/site-config-example" >}}

{{% params data="data/page-params.yaml" heading="Page Parameters" %}}
