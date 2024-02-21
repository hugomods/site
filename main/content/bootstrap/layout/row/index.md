---
type: docs
title: "Bootstrap Row Shortcode"
linkTitle: "Row"
nav_weight: 20
nav_icon:
  vendor: bs
  name: list
featured: false
pinned: false
date: 2023-06-29T08:49:25+08:00
draft: false
series:
  - Docs
categories:
  - Shortcode
tags:
  - Row
authors:
  - HugoMods
images:
---

Rows are used to wrap columns.

<!--more-->

## Usage

```markdown
{{%/* bs/row */%}}
COLUMNS
{{%/* /bs/row */%}}
```

## Parameters

{{% shortcode-params "data/params.toml" %}}

## Examples

The following example shows _1_, _2_, _3_ columns per row on _small_, _medium_, and _large_ (or above) screen respectively.

{{% bs/container class="text-center" %}}

{{% bs/row "1 md:2 lg:3" "mb-3" %}}
{{% bs/col class="border py-3" %}}Col{{% /bs/col %}}
{{% bs/col class="border py-3" %}}Col{{% /bs/col %}}
{{% bs/col class="border py-3" %}}Col{{% /bs/col %}}
{{% bs/col class="border py-3" %}}Col{{% /bs/col %}}
{{% bs/col class="border py-3" %}}Col{{% /bs/col %}}
{{% bs/col class="border py-3" %}}Col{{% /bs/col %}}
{{% /bs/row %}}

{{% /bs/container %}}

```markdown
{{%/* bs/row "1 md:2 lg:3" */%}}
COLUMNS
{{%/* /bs/row */%}}
```
