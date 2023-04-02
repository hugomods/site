---
title: "JSFiddle"
linkTitle: "JSFiddle"
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
  - JSFiddle
  - CSS
  - HTML
  - JS
  - JavaScript
authors:
  - HugoMods
images:
---

This shortcode add support for JSFiddle, a online code editor for testing your JavaScript, CSS, HTML.

<!--more-->

## Usage

```markdown
{{</* jsfiddle [user] [id] */>}}
```

### Parameters

| Position | Name | Type | Required | Default | Description |
| -------- | ---- | :--: | :------: | :-----: | ----------- |
| `#0` | `user` | string | Y | | Your fiddle user ID. |
| `#1` | `id` | string | Y | | You fiddle ID/hash. |
| | `theme` | string | | `light` | `light` or `dark`. |
| | `tabs` | string | | `js,html,css,result` | Tabs separated by comma. |

## Examples

It's recommended using the [ratio]({{< relref "docs/bootstrap/ratio" >}}) shortcode to wrap JSFiddle frame if you're using Bootstrap.

```markdown
{{</* bs/ratio 21x9 */>}}
  {{</* jsfiddle razonyang 6cp7xof1 */>}}
{{</* /bs/ratio */>}}
```

{{< bs/ratio 21x9 >}}
  {{< jsfiddle razonyang 6cp7xof1 >}}
{{< /bs/ratio >}}

### JSFiddle with Custom Tabs

```markdown
{{</* bs/ratio 21x9 */>}}
  {{</* jsfiddle user=razonyang id=6cp7xof1 tabs=html,css,result */>}}
{{</* /bs/ratio */>}}
```

{{< bs/ratio 21x9 >}}
  {{< jsfiddle user=razonyang id=6cp7xof1 tabs=html,css,result >}}
{{< /bs/ratio >}}

### JSFiddle with Dark Theme

```markdown
{{</* bs/ratio 21x9 */>}}
  {{</* jsfiddle user=razonyang id=6cp7xof1 theme=dark */>}}
{{</* /bs/ratio */>}}
```

{{< bs/ratio 21x9 >}}
  {{< jsfiddle user=razonyang id=6cp7xof1 theme=dark >}}
{{< /bs/ratio >}}

### JSFiddle with Custom Tabs and Dark Theme

```markdown
{{</* bs/ratio 21x9 */>}}
  {{</* jsfiddle user=razonyang id=6cp7xof1 tabs=html,css,result theme=dark */>}}
{{</* /bs/ratio */>}}
```

{{< bs/ratio 21x9 >}}
  {{< jsfiddle user=razonyang id=6cp7xof1 tabs=html,css,result theme=dark >}}
{{< /bs/ratio >}}
