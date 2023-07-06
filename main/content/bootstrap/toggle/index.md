---
type: docs
title: "Bootstrap Toggle Shortcode"
linkTitle: "Toggle"
nav_weight: 1000
nav_icon:
  vendor: bs
  name: toggle-on
  className: text-primary
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
aliases:
  - /en/docs/bootstrap/toggle
---

The [config toggle]({{< ref "bootstrap/config-toggle" >}}) is useful, but it's limited to generate configuration code blocks in `YAML`, `TOML` and `JSON` languages. The `toggle*` shortcodes are designed to be more versatile.

<!--more-->

## Toggle Shortcode

### Toggle Parameters

| Position | Name | Type | Required | Default | Description |
| -------- | ---- | ---- | :------: | :-----: | ----------- |
| `#0` | `name` | string | Y | - | The identifier/name of toggle. **MUST** be unique per page. |
| `#1` | `style` | string | - | `tabs` | `tabs`, `pills`. |

## Toggle Item Shortcode

The `bs/toggle-item` is used to wrap the content each block.

### Toggle Item Parameters

| Position | Name | Type | Required | Default | Description |
| -------- | ---- | ---- | :------: | :-----: | ----------- |
| `#0` | `name` | string | Y | - | The name of toggle item. **MUST** be unique per toggle. |

### Syntax

With Markdown.

```markdown
{{%/* bs/toggle-item Foo */%}}
MARKDOWN CONTENT.
{{%/* /bs/toggle-item */%}}
```

Without Markdown.

```markdown
{{</* bs/toggle-item Bar */>}}
RAW CONTENT.
{{</* /bs/toggle-item */>}}
```

## Examples

### FooBar Example

```markdown
{{</* bs/toggle foobar */>}}

  {{%/* bs/toggle-item Foo */%}}
  *Foo* Content with **Markdown**
  {{%/* /bs/toggle-item */%}}

  {{</* bs/toggle-item Bar */>}}
  Bar Content without Markdown
  {{</* /bs/toggle-item */>}}

{{</* /bs/toggle */>}}
```

{{< bs/toggle foobar >}}

  {{% bs/toggle-item Foo %}}
  *Foo* Content with **Markdown**
  {{% /bs/toggle-item %}}

  {{< bs/toggle-item Bar >}}
  Bar Content without Markdown
  {{< /bs/toggle-item >}}

{{< /bs/toggle >}}

### SDK Example with the Pills Style

It's quite easy to write SDK codes with the `bs/toggle` shortcode.

```markdown
{{</* bs/toggle name=sdk style=pills */>}}

  {{</* bs/toggle-item JS */>}}
    {{</* highlight js */>}}
    console.log('hello world');
    {{</* /highlight */>}}
  {{</* /bs/toggle-item */>}}

  {{</* bs/toggle-item PHP */>}}
    {{</* highlight php */>}}
    echo 'hello world';
    {{</* /highlight */>}}
  {{</* /bs/toggle-item */>}}
  
  {{</* bs/toggle-item Go */>}}
    {{</* highlight go */>}}
    fmt.Println("hello world")
    {{</* /highlight */>}}
  {{</* /bs/toggle-item */>}}

{{</* /bs/toggle */>}}
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
