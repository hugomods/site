---
title: "Bootstrap 網格行短代碼"
linkTitle: "行"
description: 用於生成網格行的短代碼
nav_weight: 20
nav_icon:
  vendor: bs
  name: list
date: 2023-06-29T08:49:25+08:00
series:
  - 文檔
categories:
  - 短代碼
tags:
  - 行
authors:
  - HugoMods
images:
---

## 語法

```markdown
{{%/* bs/row */%}}
COLUMNS
{{%/* /bs/row */%}}
```

{{% hugo/shortcode-params "data/params.yaml" %}}

## 示例

以下例子分別於 **small**、**medium** 和 **large**（及以上）大小的屏幕顯示 **1**、**2**、**3** 列每行。

{{< page-resource-content "data/example" >}}
