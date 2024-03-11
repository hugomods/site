---
title: "短代码例子"
linkTitle: 短代码例子
description: 在编写短代码的文档时，我们通常会提供示例及其源代码，以便用户可以预览结果、阅读和复制代码，而这将需要你重复相似的代码两次。有了这个短代码，你仅需键入一次源代码则可以实现这一点。 
nav_weight: 1
nav_icon:
  vendor: bs
  name: braces
date: 2024-03-10T13:42:19+08:00
series:
  - 文档
categories:
  - 短代码
tags:
  - 例子
authors:
  - HugoMods
images:
---

## 语法

```markdown
{{</* hugo/shortcode-example */>}}
转义后的源代码
{{</* /hugo/shortcode-example */>}}
```

{{% bs/alert warning %}}
你必须通过于开始分隔符（`{{</*` 或 `{{%`）之前添加 `/*` 和于闭合分隔符（`*/>}}` 或 `%}}`）之前添加 `*/` 来转义源代码。
{{% /bs/alert %}}

## 示例

以 `param` 为例。

{{< page-resource-content "data/example" >}}
