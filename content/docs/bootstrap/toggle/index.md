---
title: "Bootstrap Toggle Shortcode"
linkTitle: "Toggle"
nav_weight: 1000
nav_icon:
  vendor: bs
  name: toggle-on
featured: false
pinned: false
date: 2023-03-24T13:05:58+08:00
draft: false
series:
  - Docs
categories:
  - Bootstrap
  - Toggle
tags:
authors:
  - HugoMods
images:
---

The [bootstrap/config-toggle]({{< ref "docs/bootstrap/config-toggle" >}}) is useful, but it's limit to generate configuration code blocks in `YAML`, `TOML` and `JSON` languages. The `bootstrap/toggle*` shortcodes are designed to be more versatile.

<!--more-->

## Toggle Shortcode

### Toggle Parameters

| Position | Name | Type | Required | Default | Description |
| -------- | ---- | ---- | :------: | :-----: | ----------- |
| `#0` | `name` | string | Y | - | The identifier/name of toggle. **MUST** be unique per page. |
| `#1` | `style` | string | - | `tabs` | `tabs`, `pills`. |

## Toggle Item Shortcode

The `bootstrap/toggle-item` is used to wrap the content each block.

### Toggle Item Parameters

| Position | Name | Type | Required | Default | Description |
| -------- | ---- | ---- | :------: | :-----: | ----------- |
| `#0` | `name` | string | Y | - | The name of toggle item. **MUST** be unique per toggle. |

### Syntax

With Markdown.

```markdown
{{%/* bootstrap/toggle-item Foo */%}}
MARKDOWN CONTENT.
{{%/* /bootstrap/toggle-item */%}}
```

Without Markdown.

```markdown
{{</* bootstrap/toggle-item Bar */>}}
RAW CONTENT.
{{</* /bootstrap/toggle-item */>}}
```

## Examples

### FooBar Example

```markdown
{{/*< bootstrap/toggle foobar */>}}

  {{%/* bootstrap/toggle-item Foo */%}}
  *Foo* Content with **Markdown**
  {{%/* /bootstrap/toggle-item */%}}

  {{</* bootstrap/toggle-item Bar */>}}
  Bar Content without Markdown
  {{</* /bootstrap/toggle-item */>}}

{{</* /bootstrap/toggle */>}}
```

{{< bootstrap/toggle foobar >}}

  {{% bootstrap/toggle-item Foo %}}
  *Foo* Content with **Markdown**
  {{% /bootstrap/toggle-item %}}

  {{< bootstrap/toggle-item Bar >}}
  Bar Content without Markdown
  {{< /bootstrap/toggle-item >}}

{{< /bootstrap/toggle >}}

### SDK Example with the Pills Style

It's quite easy to write SDK codes with the `bootstrap/toggle` shortcode.

```markdown
{{</* bootstrap/toggle name=sdk style=pills */>}}

  {{</* bootstrap/toggle-item JS */>}}
    {{</* highlight js */>}}
    console.log('hello world');
    {{</* /highlight */>}}
  {{</* /bootstrap/toggle-item */>}}

  {{</* bootstrap/toggle-item PHP */>}}
    {{</* highlight php */>}}
    echo 'hello world';
    {{</* /highlight */>}}
  {{</* /bootstrap/toggle-item */>}}
  
  {{</* bootstrap/toggle-item Go */>}}
    {{</* highlight go */>}}
    fmt.Println("hello world")
    {{</* /highlight */>}}
  {{</* /bootstrap/toggle-item */>}}

{{</* /bootstrap/toggle */>}}
```

{{< bootstrap/toggle name=sdk style=pills >}}

  {{< bootstrap/toggle-item JS >}}
    {{< highlight js >}}
    console.log('hello world');
    {{< /highlight >}}
  {{< /bootstrap/toggle-item >}}

  {{< bootstrap/toggle-item PHP >}}
    {{< highlight php >}}
    echo 'hello world';
    {{< /highlight >}}
  {{< /bootstrap/toggle-item >}}
  
  {{< bootstrap/toggle-item Go >}}
    {{< highlight go >}}
    fmt.Println("hello world")
    {{< /highlight >}}
  {{< /bootstrap/toggle-item >}}

{{< /bootstrap/toggle >}}
