---
type: docs
title: "Bootstrap Config Toggle Shortcode"
linkTitle: "Config Toggle"
nav_weight: 1000
nav_icon:
  vendor: bs
  name: code
  color: '#ff4088'
featured: false
pinned: false
date: 2023-03-24T11:32:34+08:00
draft: false
series:
  - Docs
  - Module
categories:
  - Bootstrap
  - Shortcode
tags:
  - Code
  - Config
  - Toggle
  - TOML
  - YAML
  - JSON
authors:
  - HugoMods
aliases:
  - /en/docs/bootstrap/config-toggle
---

This shortcode generates the code blocks in multiple languages from one code base.
It is useful for projects that support configuring in multiple languages, such as `TOML`, `JSON` and `YAML`.

<!--more-->

## Supported Languages

Currently, `TOML`, `YAML` and `JSON` are supported.

## Syntax

```markdown
{{</* bs/config-toggle */>}}
PUT YAML/TOML/JSON CODE HERE.
{{</* /bs/config-toggle */>}}
```

## Site Parameters

{{% bs/config-toggle hugo %}}
params:
  bootstrap:
    config_toggle:
      langs:
        - yaml
        - toml
        - json
{{% /bs/config-toggle %}}

| Name | Type | Required | Default | Description |
| ---- | ---- | :------: | :-----: | ----------- |
| `langs` | array | - | `["toml", "yaml", "json"]` | The target languages, can be used to exclude and sort languages globally. |

## Shortcode Parameters

The following parameters are supported.

| Position | Name | Type | Required | Default | Description |
| -------- | ---- | ---- | :------: | :-----: | ----------- |
| `#0`     | `filename` | string | - | - | The filename. |
| `#1`     | `langs` | string | - | `toml,yaml,json` | The target languages, separated by comma, can be used to exclude and sort languages. |
| -        | `style` | string | - | `tabs` | `tabs`, `pills` or `underline`. |
| -        | `fill` | boolean | - | `false` | When `true` the nav items take full width. |
| -        | `title` | string | - | - | The title of configuration. |
| -        | `delimiter` | boolean | - | `false` | When `true`, wraps codes with delimiters. |

## Examples

### Filename Example

```markdown
{{</* bs/config-toggle hello */>}}
{
  "hello": "world"
}
{{</* /bs/config-toggle */>}}
```

{{< bs/config-toggle hello >}}
{
  "hello": "world"
}
{{< /bs/config-toggle >}}

### Exclude and Sort Languages

```markdown
{{</* bs/config-toggle langs=json,toml */>}}
langs = ["toml", "json"]
{{</* /bs/config-toggle */>}}
```

{{< bootstrap/config-toggle langs=json,toml >}}
langs = ["toml","json"]
{{< /bootstrap/config-toggle >}}

### Hugo Configuration Example With Title, Pills Style And Take Full Width

```markdown
{{</* bs/config-toggle filename=hugo title="Configuration" style=pills fill=true */>}}
module:
  imports:
    - path: github.com/hugomods/bootstrap
{{</* /bs/config-toggle */>}}
```

{{< bootstrap/config-toggle filename=hugo title="Configuration" style=pills fill=true >}}
module:
  imports:
    - path: github.com/hugomods/bootstrap
{{< /bootstrap/config-toggle >}}

### Hugo Front Matter Example

```markdown
{{</* bootstrap/config-toggle title="Front Matter" delimiter=true */>}}
title: Hello World!
{{</* /bootstrap/config-toggle */>}}
```

{{< bootstrap/config-toggle title="Front Matter" delimiter=true >}}
title: Hello World!
{{< /bootstrap/config-toggle >}}
