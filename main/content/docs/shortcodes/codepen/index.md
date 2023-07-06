---
title: "CodePen"
linkTitle: "CodePen"
nav_weight: 1000
# nav_icon:
#   vendor: 
#   name: 
#   color: ''
featured: false
pinned: false
date: 2023-04-02T10:45:02+08:00
draft: false
series:
  - Docs
categories:
  - Shortcode
tags:
  - Code Editor
  - CodePen
  - CSS
  - HTML
  - JS
  - JavaScript
authors:
  - HugoMods
images:
---

This shortcode add support for CodePen, a online code editor for testing your JavaScript, CSS, HTML.

<!--more-->

## Usage

```markdown
{{</* codepen [user] [id] */>}}
```

### Parameters

| Position | Name | Type | Required | Default | Description |
| -------- | ---- | :--: | :------: | :-----: | ----------- |
| `#0` | `user` | string | Y | | Your fiddle user ID. |
| `#1` | `id` | string | Y | | You fiddle ID/hash. |
| | `theme` | string | | | `light` or `dark`. |
| | `defaultTabs` | string | | `html,result` | Default tabs separated by comma, `js`, `html`, `css` and `result`. |
| | `height` | number | `300` | Frame height. |

## Examples

```markdown
{{</* codepen razonyang YzWGJNQ */>}}
```

{{< codepen razonyang YzWGJNQ >}}

### CodePen with Custom Default Tabs

```markdown
{{</* codepen user=razonyang id=YzWGJNQ defaultTabs=css,result */>}}
```

{{< codepen user=razonyang id=YzWGJNQ defaultTabs=css,result >}}

### CodePen with Light Theme

```markdown
{{</* codepen user=razonyang id=YzWGJNQ theme=light */>}}
```

{{< codepen user=razonyang id=YzWGJNQ theme=light >}}

### CodePen with Custom Default Tabs and Dark Theme

```markdown
{{</* bs/ratio 21x9 */>}}
  {{</* codepen user=razonyang id=YzWGJNQ defaultTabs=js,result theme=dark */>}}
{{</* /bs/ratio */>}}
```

{{< bs/ratio 21x9 >}}
  {{< codepen user=razonyang id=YzWGJNQ defaultTabs=js,result theme=dark >}}
{{< /bs/ratio >}}
