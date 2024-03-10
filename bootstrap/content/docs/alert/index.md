---
title: "Bootstrap Alert Shortcodes"
linkTitle: "Alert"
description: Shortcodes to generate alert messages with styles, headings and Markdown.
nav_weight: 1000
nav_icon:
  vendor: bs
  name: info-circle
  className: text-warning
date: 2023-03-24T12:19:05+08:00
categories:
  - Docs
tags:
  - Bootstrap
  - Shortcodes
  - Alert
authors:
  - HugoMods
images:
---

## Alert

{{% hugo/shortcode-params data="codes/alert-params.yaml" heading="Alert Parameters" headingStartLevel=3 %}}

### Alert Styles

{{< page-resource-content "codes/alert-styles" >}}

### Alert With Markdown

{{< page-resource-content "codes/alert-markdown" >}}

## Alert Link

The `bs/alert-link` allows inserting a styled link to an alert message.

{{% hugo/shortcode-params data="codes/alert-link-params.yaml" heading="Alert Link Parameters" headingStartLevel=3 %}}

### Alert Link Examples

{{< page-resource-content "codes/alert-link-examples" >}}

## Alert Heading

The `bs/alert-heading` shortcode is used to add a heading for alert messages.

{{% hugo/shortcode-params data="codes/alert-heading-params.yaml" heading="Alert Heading Parameters" headingStartLevel=3 %}}

### Alert Heading Examples

{{< page-resource-content "codes/alert-heading-examples" >}}
