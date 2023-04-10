---
title: "Bootstrap Lead Shortcode"
linkTitle: "Lead"
nav_weight: 1000
# nav_icon:
#   vendor: 
#   name: 
#   color: ''
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
---

Make a paragraph stand out by the `bs/lead` shortcode.

<!--more-->

## Usage

```markdown
{{%/* bs/lead */%}}
PARAGRAPH
{{%/* /bs/lead */%}}
```

## Examples

This is a regular paragraph for comparison with lead paragraphs.

{{% bs/lead %}}
This is a lead paragraph. It stands out from regular paragraphs.
{{% /bs/lead %}}

{{% bootstrap/lead %}}
This is another lead paragraph. It stands out from regular paragraphs.
{{% /bootstrap/lead %}}
