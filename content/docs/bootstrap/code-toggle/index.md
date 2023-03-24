---
title: "Code Toggle"
linkTitle: "Code Toggle"
nav_weight: 1000
nav_icon:
  vendor: bs
  name: code
featured: false
pinned: false
date: 2023-03-24T11:32:34+08:00
draft: false
series:
  - Docs
  - Module
categories:
  - Bootstrap
tags:
  - Code
  - Toggle
  - TOML
  - YAML
  - JSON
authors:
  - HugoMods
---

The `bootstrap/code-toggle` shortcode generates the code blocks in multiple languages from one code base.
It is useful for projects that support configuring in multiple languages, such as `TOML`, `JSON` and `YAML`.

<!--more-->

## Supported Languages

Currently, `TOML`, `YAML` and `JSON` are supported.

## Syntax

```markdown
{{</* bootstrap/config-toggle */>}}
PUT YAML/TOML/JSON CODE HERE.
{{</* /bootstrap/config-toggle */>}}
```

## Parameters

The following parameters are supported.

| Position | Name | Type | Required | Default | Description |
| -------- | ---- | ---- | :------: | :-----: | ----------- |
| `#1`     | `filename` | string | - | - | The filename. |
| `#2`     | `langs` | string | - | `toml,yaml,json` | The target languages, separated by comma, can be used to exclude and sort languages. |

## Examples

### Filename Example

```markdown
{{</* bootstrap/config-toggle hello */>}}
{
  "hello": "world"
}
{{</* /bootstrap/config-toggle */>}}
```

{{< bootstrap/config-toggle hello >}}
{
  "hello": "world"
}
{{< /bootstrap/config-toggle >}}

### Exclude and Sort Languages

```markdown
{{</* bootstrap/config-toggle langs=json,toml */>}}
langs = ["toml" ,"json"]
{{</* /bootstrap/config-toggle */>}}
```

{{< bootstrap/config-toggle langs=json,toml >}}
langs = ["toml" ,"json"]
{{< /bootstrap/config-toggle >}}

### Hugo Configuration Example

```markdown
{{</* bootstrap/config-toggle filename=hugo */>}}
module:
  imports:
    - path: github.com/hugomods/bootstrap
{{</* /bootstrap/config-toggle */>}}
```

{{< bootstrap/config-toggle filename=hugo >}}
module:
  imports:
    - path: github.com/hugomods/bootstrap
{{< /bootstrap/config-toggle >}}
