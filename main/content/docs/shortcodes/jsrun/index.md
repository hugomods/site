---
title: "JSRun"
linkTitle: "JSRun"
nav_weight: 1000
# nav_icon:
#   vendor: 
#   name: 
#   color: ''
featured: false
pinned: false
date: 2023-04-02T12:45:02+08:00
draft: false
series:
  - Docs
categories:
  - Shortcode
tags:
  - Code Editor
  - JSRun
  - CSS
  - HTML
  - JS
  - JavaScript
authors:
  - HugoMods
images:
---

This shortcode add support for JSRun, a online code editor for testing your codes, such as JavaScript, CSS, HTML, Go, PHP and so on.

<!--more-->

## Usage

```markdown
{{</* jsrun [id] */>}}
```

### Parameters

| Position | Name | Type | Required | Default | Description |
| -------- | ---- | :--: | :------: | :-----: | ----------- |
| `#0` | `id` | string | Y | | You fiddle ID/hash. |
| | `theme` | string | | `light` | `light` or `dark`. |
| | `tabs` | string | | `all` | Tabs separated by comma, i.e. `js,html,css,result`. |
| | `height` | number | | `300` | Frame height. |
| | `mode` | string | | | Operating mode for other languages, `quick` or `term`. |

## Examples

```markdown
{{</* jsrun QG6Kp */>}}
```

{{< jsrun QG6Kp >}}

### JSRun with Go in Term Mode

```markdown
{{</* jsrun id=e3dKp mode=term */>}}
```

{{< jsrun id=e3dKp mode=term >}}

### JSRun with MySQL in Quick Mode

```markdown
{{</* jsrun id=Q3dKp mode=quick */>}}
```

{{< jsrun id=Q3dKp mode=quick >}}

### JSRun with Custom Tabs

```markdown
{{</* jsrun id=QG6Kp tabs=html,css,result */>}}
```

{{< jsrun id=QG6Kp tabs=html,css,result >}}

### JSRun with Dark Theme

```markdown
{{</* jsrun id=QG6Kp theme=dark */>}}
```

{{< jsrun id=QG6Kp theme=dark >}}

### JSRun with Height

```markdown
{{</* jsrun id=QG6Kp height=200 */>}}
```

{{< jsrun id=QG6Kp height=200 >}}

### JSRun with Custom Tabs and Dark Theme

```markdown
{{</* jsrun id=QG6Kp tabs=html,css,result theme=dark */>}}
```

{{< jsrun id=QG6Kp tabs=html,css,result theme=dark >}}
