---
type: docs
title: "Bootstrap Lead Shortcode"
linkTitle: "Lead"
nav_weight: 1000
nav_icon:
  vendor: bs
  name: paragraph
  className: text-danger
featured: false
pinned: false
date: 2023-04-10T08:49:25+08:00
draft: false
series:
  - Docs
categories:
  - Shortcode
tags:
  - Lead
authors:
  - HugoMods
images:
aliases:
  - /en/docs/bootstrap/lead
---

Make a paragraph stand out by the `bs/lead` shortcode.

<!--more-->

## Usage

```markdown
{{%/* bs/lead */%}}
PARAGRAPH
{{%/* /bs/lead */%}}
```

## Parameters

{{% shortcode-params "data/params.toml" %}}

## Examples

This is a regular paragraph for comparison with lead paragraphs.

```markdown
{{%/* bs/lead */%}}
This is a lead paragraph. It stands out from regular paragraphs.
{{%/* /bs/lead */%}}
```

{{% bs/lead %}}
This is a lead paragraph. It stands out from regular paragraphs.
{{% /bs/lead %}}

```markdown
{{%/* bootstrap/lead */%}}
This is another lead paragraph. It stands out from regular paragraphs.
{{%/* /bootstrap/lead */%}}
```

{{% bootstrap/lead %}}
This is another lead paragraph. It stands out from regular paragraphs.
{{% /bootstrap/lead %}}

```markdown
{{%/* bs/lead class="text-primary" */%}}
This is another lead paragraph with extra classes.
{{%/* /bs/lead */%}}
```

{{% bs/lead class="text-primary" %}}
This is another lead paragraph with extra classes.
{{% /bs/lead %}}
