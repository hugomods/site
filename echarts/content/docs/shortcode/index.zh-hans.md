---
title: "短代码"
linkTitle: "短代码"
description: 通过短代码来使用 ECharts。
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

## 语法

### TOML/YAML/JSON 语法

```markdown
{{</* echarts param1=value1 param2=value2 */>}}
CHART OPTIONS WRITTEN IN JSON/TOML/YAML
{{</* /echarts */>}}
```

### TOML/YAML/JSON 数据文件语法

```markdown
{{</* echarts data="" param1=value1 param2=value2 /*/>}}
```

### JavaScript 语法

```markdown
{{</* echarts _js=true param1=value1 param2=value2 */>}}
CHART OPTIONS WRITTEN IN JSON/TOML/YAML
{{</* /echarts */>}}
```

### JavaScript 文件语法

```markdown
{{</* echarts _js=true _jsFile="" param1=value1 param2=value2 /*/>}}
```

{{% hugo/shortcode-params "codes/params.yaml" %}}

### 其他

你可以为图表容器设置任意属性，比如 `class`、`id` 和 `data-*`。

## 示例

### JSON 示例

{{< page-resource-content "codes/example-json" >}}

### JSON 页面数据文件示例

{{< page-resource-content "codes/example-json-page-data" >}}

### JSON 站点数据文件示例

{{< page-resource-content "codes/example-json-site-data" >}}

### 带有自定义属性的 JSON 示例

{{< page-resource-content "codes/example-json-attrs" >}}

### TOML 示例

{{< page-resource-content "codes/example-toml" >}}

### YAML 示例

{{< page-resource-content "codes/example-yaml" >}}

### JavaScript 示例

{{< page-resource-content "codes/example-js" >}}

### 页面 JavaScript 文件示例

{{< page-resource-content "codes/example-js-page-file" >}}

### 站点 JavaScript 文件示例

{{< page-resource-content "codes/example-js-site-file" >}}
