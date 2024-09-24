---
title: "Page Resource Content"
linkTitle: Page Resource Content
description: Shortcode to render page resource content, it's useful to reuse content blocks, especially for writing mutilingual documentation.
nav_weight: 1
nav_icon:
  vendor: bs
  name: braces
date: 2024-03-11T13:06:19+08:00
series:
  - Docs
categories:
  - Shortcodes
tags:
  - Markdown
  - Page Resource
authors:
  - HugoMods
images:
---

## Syntax

```markdown
{{</* page-resource-content [name] */>}}
```

{{% bs/alert warning %}}
Please do not use `md` as the extension if you're going to reuse it on multilingual pages.
{{% /bs/alert %}}

{{% params "data/params.yaml" %}}

## Example

{{< page-resource-content "data/example" >}}
