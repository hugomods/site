---
type: docs
title: "Bootstrap Accordion Shortcode"
linkTitle: "Accordion"
description: |
  A detailed guide of using the Bootstrap accordion shortcode to build vertically accordions.
  The FAQ is the most common use case of Bootstrap accordion component.
nav_icon:
  vendor: bs
  name: chevron-expand
date: 2023-08-11T23:47:27+08:00
featured: false
pinned: false
draft: false
series:
  - Shortcode
categories:
  - Bootstrap
tags:
  - Accordion
authors:
  - HugoMods
images:
---

## Syntax

```markdown
{{</* bs/accordion */>}}
```

## Parameters

{{% shortcode-params "data/params.yaml" %}}

## Data Item Properties

### `title`

The title of accordion item.

### `content`

The content of accordion item, Markdown is support.

### `weight`

The weight of accordion item, the lower `weight` gets higher priority.

### `show`

The first item's content will be shown by default, but you can change it via this property.

### Data File Example

{{% bs/collapse "data/accordion/example.yaml" primary true %}}
```yaml
first:
  weight: 1
  title: Step One
  content: __Firstly__, ...
second:
  weight: 2
  title: Step Two
  content: __Secondary__, ...

```
{{% /bs/collapse %}}

## Examples

### Default Accordion Example

```markdown
{{</* bs/accordion "accordion.faq" */>}}
```

{{< bs/accordion "accordion.faq" >}}

### Flush Accordion Example

```markdown
{{</* bs/accordion data="accordion.faq" flush=true */>}}
```

{{< bs/accordion data="accordion.faq" flush=true >}}

### Flush Accordion Example with `alwaysOpen` Enabled

```markdown
{{</* bs/accordion data="accordion.faq" flush=true alwaysOpen=true */>}}
```

{{< bs/accordion data="accordion.faq" flush=true alwaysOpen=true >}}
