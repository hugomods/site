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

## Site Parameters

{{% bs/config-toggle hugo %}}
params:
  bootstrap:
    article_cards:
      limit: 12
      image_height: 240
{{% /bs/config-toggle %}}

| Name | Type | Required | Default | Description |
| ---- | ---- | :------: | :-----: | ----------- |
| `limit` | number | - | `12` | The default number of posts. |
| `image_height` | number | - | `240` | The default height of image. |

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
