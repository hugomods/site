---
date: 2024-03-05T22:32:43+08:00
title: 自定義圖標供應商
description: 內置的圖標供應商或許無法滿足你的需求，別擔心，你完全可以創建屬於你自己的圖標供應商。
nav_weight: 6
nav_icon:
  vendor: bs
  name: plus-circle
  className: text-success
categories:
  - 文檔
tags:
  - 供應商
---

## 原理

圖標以 `/assets/icons/{vendor}/{name}` 形式保存，其中 `{vendor}`、`{name}` 分別表示供應商名稱和圖標名稱。

## 站點範圍的 SVG 圖標

添加和使用自定義圖標的最簡單方法是將圖標保存到相應的文件夾中。讓我們以 `/asset/icons/custom/example.svg` 為例，供應商名稱為 `custom`，圖標名稱為 `example`，然後你可以通過模板和快捷代碼使用它。

## 共享的 SVG 圖標

若打算於多個站點複用這些圖標，你則需要創建一個模塊。

### 創建並克隆倉庫

首先創建一個倉庫，並克隆到本地，以 `github.com/user/hugo-icons` 為例。

{{< bs/alert danger >}}
請勿忘記修改倉庫地址和模塊路徑。
{{< /bs/alert >}}

```sh
git clone https://github.com/user/hugo-icons
cd hugo-icons
```

### 初始化模塊

模塊路徑通常為不帶協議的倉庫地址。

```sh
hugo mod init github.com/user/hugo-icons
```

### 添加圖標

然後使用適當的供應商名稱將圖標保存到 `/assets/icons`。

### 提交更改並推送到遠程

```sh
git add -A
git commit -m 'add icons'
git push origin main
```

### 將新圖標供應商導入到站點

現在你應該可以將自定義的圖標供應商導入到站點。
