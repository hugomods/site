---
date: 2024-03-05T19:20:15+08:00
title: 用法
description: 学习如何通过模板和短代码使用图标。
nav_weight: 3
nav_icon:
  vendor: bs
  name: terminal
categories:
  - Docs
tags:
  - 短代码
  - 模板
  - partial
---

## 通过模板使用图标

{{< page-resource-content "codes/template-example" >}}

{{% params data=params.yaml headingStartLevel=3 %}}

## 通过短代码使用图标

{{% hugo/shortcode-params data=params.yaml headingStartLevel=3 %}}

### 图标短代码示例

#### 带有默认设置的图标

{{< hugo/shortcode-example >}}
{{</* icons/icon bootstrap house */>}}
{{< /hugo/shortcode-example >}}

#### 自定义颜色的图标

{{< hugo/shortcode-example >}}
{{</* icons/icon vendor=bootstrap name=exclamation-circle color=red */>}}
{{< /hugo/shortcode-example >}}

#### 自定义类名的图标

{{< hugo/shortcode-example >}}
{{</* icons/icon vendor=bootstrap name=check-circle className="text-success" */>}}
{{< /hugo/shortcode-example >}}

#### 自定义大小的图标

{{< hugo/shortcode-example >}}
{{</* icons/icon vendor=bootstrap name=plus-circle size=3em */>}}
{{< /hugo/shortcode-example >}}
