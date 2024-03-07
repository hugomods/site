---
date: 2024-03-05T19:20:15+08:00
title: 用法
description: 學習如何通過模板和短代碼使用圖標。
nav_weight: 3
nav_icon:
  vendor: bs
  name: terminal
categories:
  - Docs
tags:
  - 短代碼
  - 模板
  - partial
---

## 通過模板使用圖標

{{< page-resource-content "codes/template-example" >}}

{{% params data=params.yaml headingStartLevel=3 %}}

## 通過短代碼使用圖標

{{% hugo/shortcode-params data=params.yaml headingStartLevel=3 %}}

### 圖標短代碼示例

#### 帶有默認設置的圖標

{{< hugo/shortcode-example >}}
{{</* icons/icon bootstrap house */>}}
{{< /hugo/shortcode-example >}}

#### 自定義顏色的圖標

{{< hugo/shortcode-example >}}
{{</* icons/icon vendor=bootstrap name=exclamation-circle color=red */>}}
{{< /hugo/shortcode-example >}}

#### 自定義類名的圖標

{{< hugo/shortcode-example >}}
{{</* icons/icon vendor=bootstrap name=check-circle className="text-success" */>}}
{{< /hugo/shortcode-example >}}

#### 自定義大小的圖標

{{< hugo/shortcode-example >}}
{{</* icons/icon vendor=bootstrap name=plus-circle size=3em */>}}
{{< /hugo/shortcode-example >}}
