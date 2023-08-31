---
type: docs
nav_icon:
  vendor: bs
  name: files
  className: text-primary
title: "Bootstrap Article Cards Shortcode"
linkTitle: Article Cards
date: 2023-07-03T15:32:53+08:00
featured: false
pinned: false
draft: false
series:
categories:
  - Shortcodes
tags:
  - Articles
  - Card
authors:
  - HugoMods
images:
---

This shortcode generate a list of articles in card style.

<!--more-->

## Usage

```markdown
{{</* bs/article-cards */>}}
```

## Parameters

{{% shortcode-params "data/params.toml" %}}

## Examples

### Default Article Cards

```markdown
{{</* bs/article-cards limit=3 */>}}
```

{{< bs/article-cards limit=3 >}}

### Default Article Cards Without Link Text

```markdown
{{</* bs/article-cards limit=3 linkText="" */>}}
```

{{< bs/article-cards limit=3 linkText="" >}}
