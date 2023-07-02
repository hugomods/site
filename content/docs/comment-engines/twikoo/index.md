---
title: "Twikoo Module"
linkTitle: "Twikoo"
nav_weight: 1000
nav_icon:
  vendor: fas
  name: comments
  color: ''
featured: false
pinned: false
date: 2023-04-22T15:07:15+08:00
draft: false
series:
  - Docs
categories:
  - Modules
tags:
  - Twikoo
authors:
  - HugoMods
images:
---

This module add support for [Twikoo](https://github.com/imaegoo/twikoo/), a simple, free and self-hosted comments system.

<!--more-->

{{< module "github.com/hugomods/twikoo" >}}

## Usage

### Generate the Comments Container

```html
<div id="twikoo-comments"></div>
```

### Import the Script

```go-html-template
{{ partialCached "twikoo/script" . }}
```

Or pass the specified options.

```go-html-template
{{- $opts := dict "env_id" "" }}
{{ partialCached "twikoo/script-with-options" $opts }}
```

## Site Parameters

| Name     |  Type  | Required |                           Default                            | Description                                                      |
| -------- | :----: | :------: | :----------------------------------------------------------: | ---------------------------------------------------------------- |
| `env_id` | string |    Y     |                              -                               | The Tencent Cloud environment ID or self-hosted endpoint.        |
| `el`     | string |    Y     |                      `#twikoo-comments`                      | The HTML element to put comments in.                             |
| `js_url` | string |    Y     | `https://cdn.staticfile.org/twikoo/1.6.16/twikoo.all.min.js` | The script URL.                                                  |
| `region` | string |    -     |                              -                               | The Tencent Cloud region, such as `ap-shanghai`, `ap-guangzhou`. |

{{% bs/config-toggle hugo %}}
params:
  twikoo:
    env_id: ''
    el: '#twikoo-comments'
    js_url: https://cdn.staticfile.org/twikoo/1.6.16/twikoo.all.min.js
    region: ''
{{% /bs/config-toggle %}}
