---
type: docs
title: "Bootstrap Col Shortcode"
linkTitle: "Col"
nav_weight: 30
nav_icon:
  vendor: bs
  name: layout-three-columns
featured: false
pinned: false
date: 2023-06-29T08:49:25+08:00
draft: false
series:
  - Docs
categories:
  - Shortcode
tags:
  - Col
authors:
  - HugoMods
images:
---

Learn how to use the col shortcode with handful of options.

<!--more-->

## Usage

```markdown
{{%/* bs/col */%}}
BODY
{{%/* /bs/col */%}}
```

## Parameters

{{% shortcode-params "data/params.en.toml" %}}

## Examples

### Equal Width Columns Example

{{% bs/container "fluid" "text-center mb-3" %}}

{{% bs/row %}}
{{% bs/col class="border py-3" %}}Col{{% /bs/col %}}
{{% bs/col class="border py-3" %}}Col{{% /bs/col %}}
{{% bs/col class="border py-3" %}}Col{{% /bs/col %}}
{{% bs/col class="border py-3" %}}Col{{% /bs/col %}}
{{% /bs/row %}}

{{% /bs/container %}}

```markdown
{{%/* bs/row */%}}
{{%/* bs/col */%}}Col{{%/* /bs/col */%}}
{{%/* bs/col */%}}Col{{%/* /bs/col */%}}
{{%/* bs/col */%}}Col{{%/* /bs/col */%}}
{{%/* bs/col */%}}Col{{%/* /bs/col */%}}
{{%/* /bs/row */%}}
```

### Specified Width Columns Example

{{% bs/container "fluid" "text-center mb-3" %}}

{{% bs/row %}}
{{% bs/col size="12 md:6 lg:3" class="border py-3" %}}Col{{% /bs/col %}}
{{% bs/col size="12 md:6 lg:3" class="border py-3" %}}Col{{% /bs/col %}}
{{% bs/col size="12 md:6 lg:3" class="border py-3" %}}Col{{% /bs/col %}}
{{% bs/col size="12 md:6 lg:3" class="border py-3" %}}Col{{% /bs/col %}}
{{% /bs/row %}}

{{% /bs/container %}}

```markdown
{{%/* bs/row */%}}
{{%/* bs/col size="12 md:6 lg:3" */%}}Col{{%/* /bs/col */%}}
{{%/* bs/col size="12 md:6 lg:3" */%}}Col{{%/* /bs/col */%}}
{{%/* bs/col size="12 md:6 lg:3" */%}}Col{{%/* /bs/col */%}}
{{%/* bs/col size="12 md:6 lg:3" */%}}Col{{%/* /bs/col */%}}
{{%/* /bs/row */%}}
```

### Columns Example with Offset

{{% bs/container class="text-center mb-3" %}}

{{% bs/row %}}
{{% bs/col size="6 md:4" class="border py-3" %}}Col{{% /bs/col %}}
{{% bs/col size="6 md:4" offset="md:4" class="border py-3" %}}Col{{% /bs/col %}}
{{% /bs/row %}}

{{% /bs/container %}}

```markdown
{{%/* bs/row */%}}
{{%/* bs/col size="6 md:4" */%}}Col{{%/* /bs/col */%}}
{{%/* bs/col size="6 md:4" offset="md:4" */%}}Col{{%/* /bs/col */%}}
{{%/* /bs/row */%}}
```
