---
type: docs
title: "Bootstrap Alert Shortcodes"
linkTitle: "Alert"
nav_weight: 1000
nav_icon:
  vendor: bs
  name: info-circle
  className: text-warning
featured: true
pinned: false
date: 2023-03-24T12:19:05+08:00
draft: false
series:
  - Docs
categories:
  - Bootstrap
  - Shortcode
tags:
  - Alert
authors:
  - HugoMods
images:
aliases:
  - /en/docs/bootstrap/alert
---

The article describe how to use the `bs/alert*` shortcodes to generate alert messages.

<!--more-->

## Alert Shortcode

### Alert Syntax

```markdown
{{</* bs/alert */>}}
MESSAGE.
{{</* /bs/alert */>}}
```

### Alert Parameters

| Position | Name | Type | Required | Default | Description |
| -------- | ---- | ---- | :------: | :-----: | ----------- |
| `#0` | `style` | string | - | `primary` | `primary`, `secondary`, `success`, `danger`, `warning`, `info`, `light` and `dark`. |

### Alert Styles

```markdown
{{</* bs/alert primary */>}}
A simple primary alert—check it out!
{{</* /bs/alert */>}}
```

{{< bs/alert primary >}}
A simple primary alert—check it out!
{{< /bs/alert >}}

```markdown
{{</* bs/alert secondary */>}}
A simple secondary alert—check it out!
{{</* /bs/alert */>}}
```

{{< bootstrap/alert secondary >}}
A simple secondary alert—check it out!
{{< /bootstrap/alert >}}

```markdown
{{</* bs/alert success */>}}
A simple success alert—check it out!
{{</* /bs/alert */>}}
```

{{< bootstrap/alert success >}}
A simple success alert—check it out!
{{< /bootstrap/alert >}}

```markdown
{{</* bs/alert danger */>}}
A simple danger alert—check it out!
{{</* /bs/alert */>}}
```

{{< bs/alert danger >}}
A simple danger alert—check it out!
{{< /bs/alert >}}

```markdown
{{</* bs/alert warning */>}}
A simple warning alert—check it out!
{{</* /bs/alert */>}}
```

{{< bs/alert warning >}}
A simple warning alert—check it out!
{{< /bs/alert >}}

```markdown
{{</* bs/alert info */>}}
A simple info alert—check it out!
{{</* /bs/alert */>}}
```

{{< bs/alert info >}}
A simple info alert—check it out!
{{< /bs/alert >}}

```markdown
{{</* bs/alert light */>}}
A simple light alert—check it out!
{{</* /bs/alert */>}}
```

{{< bs/alert light >}}
A simple light alert—check it out!
{{< /bs/alert >}}

```markdown
{{</* bs/alert dark */>}}
A simple dark alert—check it out!
{{</* /bs/alert */>}}
```

{{< bs/alert dark >}}
A simple dark alert—check it out!
{{< /bs/alert >}}

## Alert with Markdown Content

We could achieve this by combining the `bs/alert` and `markdownify` shortcodes.

```markdown
{{%/* bs/alert style=primary */%}}
A simple *primary alert* with Markdown—**check it out**!
{{%/* /bs/alert */%}}
```

{{% bs/alert style=primary %}}
A simple *primary alert* with Markdown—**check it out**!
{{% /bs/alert %}}

## Alert Link Shortcode

The `bs/alert-link` allows inserting a styled link to an alert message.

### Alert Link Parameters

| Position | Name | Type | Required | Default | Description |
| -------- | ---- | ---- | :------: | :-----: | ----------- |
| `#0` | - | string | Y  | - | The text. |
| `#1` | - | string | Y  | - | The URL. |

### Alert Link Examples

```markdown
{{</* bs/alert */>}}
A simple primary alert with {{</* bs/alert-link "an example link" "#alert-link" */>}}. Give it a click if you like.
{{</* /bs/alert */>}}
```

{{< bs/alert >}}
A simple primary alert with {{< bs/alert-link "an example link" "#alert-link" >}}. Give it a click if you like.
{{< /bs/alert >}}

{{< bootstrap/alert warning >}}
A simple warning alert with {{< bootstrap/alert-link "an example link" "#alert-link" >}}. Give it a click if you like.
{{< /bootstrap/alert >}}

## Alert Heading Shortcode

The `bootstrap/alert-heading` shortcode is used to add a heading for alert messages.

### Alert Heading Parameters

| Position | Name | Type | Required | Default | Description |
| -------- | ---- | ---- | :------: | :-----: | ----------- |
| `#0` | - | string | Y  | - | The heading. |

### Alert Heading Examples

```markdown
{{</* bs/alert success */>}}
{{</* bs/alert-heading "Well done!" */>}}
Aww yeah, you successfully read this important alert message. This example text is going to run a bit longer so that you can see how spacing within an alert works with this kind of content.
{{</* /bs/alert */>}}
```

{{% bs/alert success %}}
{{< bs/alert-heading "Well done!" >}}
Aww yeah, you **successfully** read this important alert message. This example text is going to run a bit longer so that you can see how spacing within an alert works with this kind of content.
{{% /bs/alert %}}
