---
title: "Bootstrap 警告框短代码"
linkTitle: "警告框"
description: 用于生成带有样式、标题和 Markdown 语法的警告框的短代码。
nav_weight: 1000
nav_icon:
  vendor: bs
  name: info-circle
  className: text-warning
date: 2023-03-24T12:19:05+08:00
categories:
  - 文档
tags:
  - Bootstrap
  - 短代码
  - 警告框
  - Alert
authors:
  - HugoMods
images:
---

## 警告框

{{% hugo/shortcode-params data="codes/alert-params.yaml" heading="警告框参数" headingStartLevel=3 %}}

### 警告框样式

{{< page-resource-content "codes/alert-styles" >}}

### 带有 Markdown 内容的警告框

{{< page-resource-content "codes/alert-markdown" >}}

## 警告链接

`bs/alert-link` 允许于警告框内插入一个样式化的链接。

{{% hugo/shortcode-params data="codes/alert-link-params.yaml" heading="警告链接参数" headingStartLevel=3 %}}

### 警告链接示例

{{< page-resource-content "codes/alert-link-examples" >}}

## 警告框标题

`bs/alert-heading` 用于为警告框添加标题。

{{% hugo/shortcode-params data="codes/alert-heading-params.yaml" heading="警告框标题参数" headingStartLevel=3 %}}

### 警告框标题示例

{{< page-resource-content "codes/alert-heading-examples" >}}
