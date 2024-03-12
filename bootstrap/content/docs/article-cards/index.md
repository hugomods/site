---
title: "Bootstrap Article Cards Shortcode"
description: Shortcode to generate a list of articles in card style.
linkTitle: Article Cards
date: 2023-07-03T15:32:53+08:00
nav_weight: 1000
nav_icon:
  vendor: bs
  name: files
  className: text-primary
categories:
  - Docs
tags:
  - Shortcodes
  - Articles
  - Card
authors:
  - HugoMods
images:
---

{{% bs/alert danger %}}
Please do not use this shortcode on article detail page, otherwise infinite recursion issue will arise, it's safe to use it on homepage, section list.
{{% /bs/alert %}}

## Syntax

```markdown
{{</* bs/article-cards */>}}
```

{{% hugo/shortcode-params "data/params.yaml" %}}

{{% params data="data/site-params.yaml" heading="Site Parameters" %}}

{{< page-resource-content "data/config" >}}
