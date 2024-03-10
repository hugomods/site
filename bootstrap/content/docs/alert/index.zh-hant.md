---
title: "Bootstrap 警告框短代碼"
linkTitle: "警告框"
description: 用於生成帶有樣式、標題和 Markdown 語法的警告框的短代碼。
nav_weight: 1000
nav_icon:
  vendor: bs
  name: info-circle
  className: text-warning
date: 2023-03-24T12:19:05+08:00
categories:
  - 文檔
tags:
  - Bootstrap
  - 短代碼
  - 警告框
  - Alert
authors:
  - HugoMods
images:
---

## 警告框

{{% hugo/shortcode-params data="codes/alert-params.yaml" heading="警告框參數" headingStartLevel=3 %}}

### 警告框樣式

{{< page-resource-content "codes/alert-styles" >}}

### 帶有 Markdown 內容的警告框

{{< page-resource-content "codes/alert-markdown" >}}

## 警告鏈接

`bs/alert-link` 允許於警告框內插入一個樣式化的鏈接。

{{% hugo/shortcode-params data="codes/alert-link-params.yaml" heading="警告鏈接參數" headingStartLevel=3 %}}

### 警告鏈接示例

{{< page-resource-content "codes/alert-link-examples" >}}

## 警告框標題

`bs/alert-heading` 用於為警告框添加標題。

{{% hugo/shortcode-params data="codes/alert-heading-params.yaml" heading="警告框標題參數" headingStartLevel=3 %}}

### 警告框標題示例

{{< page-resource-content "codes/alert-heading-examples" >}}
