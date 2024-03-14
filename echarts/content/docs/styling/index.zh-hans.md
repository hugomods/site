---
title: "样式"
linkTitle: "样式"
description: 调整图表样式以匹配你主题的 UI 设计。
nav_icon:
  vendor: bs
  name: palette
  className: text-primary
date: 2024-03-14T20:11:19+08:00
series:
  - 文档
categories:
tags:
  - 样式
  - SCSS
  - CSS
authors:
  - HugoMods
images:
---

## 原理

所有的 ECharts 都有一个类名称为 `.echarts` 的类名，还有一些用于指示当前状态的类名：

1. `initializing`：正在初始化图表。
2. `initialized`：图表已初始化完成。

## 示例

{{< page-resource-content "codes/style" >}}
