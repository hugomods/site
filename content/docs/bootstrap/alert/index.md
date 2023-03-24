---
title: "Bootstrap Alert Shortcodes"
linkTitle: "Alert"
nav_weight: 1000
nav_icon:
  vendor: bs
  name: info-circle
featured: false
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
---

The article describe how to use the `bootstrap/alert*` shortcodes to generate alert messages.

<!--more-->

## Alert Shortcode

### Alert Syntax

```markdown
{{</* bootstrap/alert */>}}
MESSAGE.
{{</* /bootstrap/alert */>}}
```

### Alert Parameters

| Position | Name | Type | Required | Default | Description |
| -------- | ---- | ---- | :------: | :-----: | ----------- |
| `#0` | `style` | string | - | `primary` | `primary`, `secondary`, `success`, `danger`, `warning`, `info`, `light` and `dark`. |

### Alert Styles

```markdown
{{</* bootstrap/alert primary */>}}
A simple primary alert—check it out!
{{</* /bootstrap/alert */>}}
```

{{< bootstrap/alert primary >}}
A simple primary alert—check it out!
{{< /bootstrap/alert >}}

```markdown
{{</* bootstrap/alert secondary */>}}
A simple secondary alert—check it out!
{{</* /bootstrap/alert */>}}
```

{{< bootstrap/alert secondary >}}
A simple secondary alert—check it out!
{{< /bootstrap/alert >}}

```markdown
{{</* bootstrap/alert success */>}}
A simple success alert—check it out!
{{</* /bootstrap/alert */>}}
```

{{< bootstrap/alert success >}}
A simple success alert—check it out!
{{< /bootstrap/alert >}}

```markdown
{{</* bootstrap/alert danger */>}}
A simple danger alert—check it out!
{{</* /bootstrap/alert */>}}
```

{{< bootstrap/alert danger >}}
A simple danger alert—check it out!
{{< /bootstrap/alert >}}

```markdown
{{</* bootstrap/alert warning */>}}
A simple warning alert—check it out!
{{</* /bootstrap/alert */>}}
```

{{< bootstrap/alert warning >}}
A simple warning alert—check it out!
{{< /bootstrap/alert >}}

```markdown
{{</* bootstrap/alert info */>}}
A simple info alert—check it out!
{{</* /bootstrap/alert */>}}
```

{{< bootstrap/alert info >}}
A simple info alert—check it out!
{{< /bootstrap/alert >}}

```markdown
{{</* bootstrap/alert light */>}}
A simple light alert—check it out!
{{</* /bootstrap/alert */>}}
```

{{< bootstrap/alert light >}}
A simple light alert—check it out!
{{< /bootstrap/alert >}}

```markdown
{{</* bootstrap/alert dark */>}}
A simple dark alert—check it out!
{{</* /bootstrap/alert */>}}
```

{{< bootstrap/alert dark >}}
A simple dark alert—check it out!
{{< /bootstrap/alert >}}

## Alert with Markdown Content

We could achieve this by combining the `bootstrap/alert` and `markdownify` shortcodes.

```markdown
{{</* bootstrap/alert primary */>}}
{{%/* markdownify */%}}
A simple *primary alert* with Markdown—**check it out**!
{{%/* /markdownify */%}}
{{</* /bootstrap/alert */>}}
```

{{< bootstrap/alert primary >}}
{{% markdownify %}}
A simple *primary alert* with Markdown—**check it out**!
{{% /markdownify %}}
{{< /bootstrap/alert >}}

## Alert Link Shortcode

The `bootstrap/alert-link` allows inserting a styled link to an alert message.

### Alert Link Parameters

| Position | Name | Type | Required | Default | Description |
| -------- | ---- | ---- | :------: | :-----: | ----------- |
| `#0` | - | string | Y  | - | The text. |
| `#1` | - | string | Y  | - | The URL. |

### Alert Link Examples

```markdown
{{</* bootstrap/alert */>}}
A simple primary alert with {{</* bootstrap/alert-link "an example link" "#alert-link" */>}}. Give it a click if you like.
{{</* /bootstrap/alert */>}}
```

{{< bootstrap/alert >}}
A simple primary alert with {{< bootstrap/alert-link "an example link" "#alert-link" >}}. Give it a click if you like.
{{< /bootstrap/alert >}}

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
{{</* bootstrap/alert success */>}}
{{</* bootstrap/alert-heading "Well done!" */>}}
Aww yeah, you successfully read this important alert message. This example text is going to run a bit longer so that you can see how spacing within an alert works with this kind of content.
{{</* /bootstrap/alert */>}}
```

{{< bootstrap/alert success >}}
{{< bootstrap/alert-heading "Well done!" >}}
Aww yeah, you successfully read this important alert message. This example text is going to run a bit longer so that you can see how spacing within an alert works with this kind of content.
{{< /bootstrap/alert >}}
