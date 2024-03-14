---
title: "短代碼"
linkTitle: "短代碼"
description: 通過短代碼來使用 ECharts。
nav_weight: 2
nav_icon:
  vendor: bs
  name: braces
  className: text-success
date: 2024-03-14T14:03:19+08:00
series:
  - Docs
categories:
tags:
  - Markdown
  - Shortcode
  - TOML
  - YAML
  - JSON
  - JavaScript
authors:
  - HugoMods
images:
---

## 語法

### TOML/YAML/JSON 語法

```markdown
{{</* echarts param1=value1 param2=value2 */>}}
CHART OPTIONS WRITTEN IN JSON/TOML/YAML
{{</* /echarts */>}}
```

### TOML/YAML/JSON 數據文件語法

```markdown
{{</* echarts data="" param1=value1 param2=value2 /*/>}}
```

### JavaScript 語法

```markdown
{{</* echarts _js=true param1=value1 param2=value2 */>}}
CHART OPTIONS WRITTEN IN JSON/TOML/YAML
{{</* /echarts */>}}
```

### JavaScript 文件語法

```markdown
{{</* echarts _js=true _jsFile="" param1=value1 param2=value2 /*/>}}
```

{{% hugo/shortcode-params "codes/params.yaml" %}}

### 其他

你可以為圖表容器設置任意屬性，比如 `class`、`id` 和 `data-*`。

## 示例

### JSON 示例

{{< page-resource-content "codes/example-json" >}}

### JSON 頁面數據文件示例

{{< page-resource-content "codes/example-json-page-data" >}}

### JSON 站點數據文件示例

{{< page-resource-content "codes/example-json-site-data" >}}

### 帶有自定義屬性的 JSON 示例

{{< page-resource-content "codes/example-json-attrs" >}}

### TOML 示例

{{< page-resource-content "codes/example-toml" >}}

### YAML 示例

{{< page-resource-content "codes/example-yaml" >}}

### JavaScript 示例

{{< page-resource-content "codes/example-js" >}}

### 頁面 JavaScript 文件示例

{{< page-resource-content "codes/example-js-page-file" >}}

### 站點 JavaScript 文件示例

{{< page-resource-content "codes/example-js-site-file" >}}
