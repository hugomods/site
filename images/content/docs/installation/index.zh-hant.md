---
title: "安裝 Hugo 圖片模塊"
linkTitle: "安裝"
description: 學習如何安裝 Hugo 圖片模塊。
nav_weight: 1
nav_icon:
  vendor: bs
  name: cloud-download
  className: text-success
date: 2023-03-23T06:27:36+08:00
categories:
  - 文檔
tags:
  - 安裝
authors:
  - HugoMods
---

{{% hugo-module-requirements %}}

## 導入模塊

{{< page-resource-content "codes/import" >}}

{{% bs/alert warning %}}
此模塊建議在[圖片渲染鉤子](https://gohugo.io/render-hooks/images/)之上。
若你的主題有一個內置的渲染圖像鉤子，那麼可能會發生衝突，在這種情況下，你需要將這個模塊放在您的主題之上，以確保這個模塊獲得更高的優先級。
{{% /bs/alert %}}
