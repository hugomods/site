---
title: "安裝 Hugo Bootstrap 模塊"
linkTitle: "安裝"
description: 學習如何安裝 Hugo Bootstrap 模塊。
nav_weight: 1
nav_icon:
  vendor: bs
  name: cloud-download
  className: text-success
date: 2023-03-24T11:27:36+08:00
categories:
  - 文檔
tags:
  - 安裝
authors:
  - HugoMods
---

{{% bs/alert warning %}}
請注意本模塊並不會為你的站點設置 Bootstrap，你需要確保通過某種方式安裝了 Bootstrap CSS 和 JS 組件。
{{% /bs/alert %}}

{{% hugo-module-requirements %}}

一些像 [Clearfix]({{< ref "docs/clearfix" >}}) 的短代碼需要開啟 `markup.goldmark.renderer.unsafe`。

{{% bs/alert warning %}}
當內容由你控制時，`markup.goldmark.renderer.unsafe` 並非不安全的。若內容是開放式創作，且無任何審查流程時，則請禁用之。
{{% /bs/alert %}}

{{< page-resource-content "codes/config" >}}

## 導入模塊

{{< page-resource-content "codes/import" >}}

## 額外樣式

儘管我們儘量不引入額外的樣式，但還是需要一些[額外的樣式](https://github.com/hugomods/bootstrap/tree/main/assets/mods/bootstrap/scss)來使短代碼看起來更好。

你可以將這些樣式複製到你的站點，又或者使用 Hugo Pipes（推薦）來編譯。

{{< page-resource-content "codes/style" >}}

{{% bs/alert warning %}}
路徑 `mods/bootstrap/scss/index` 是相對於 `/assets` 目錄的，請根據主要樣式的位置進行修改。
以 `assets/styles/main.scss` 為例，你需要將路徑改為 `../mods/bootstrap/scss/index`。
{{% /bs/alert %}}

## 命名空間

該模塊具有兩個命名空間：`bs` 和 `bootstrap`，兩者均有效，建議使用較短的名稱空間。
