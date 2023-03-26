---
title: "Bootstrap Collapse Shortcode"
linkTitle: "Collapse"
nav_weight: 1000
nav_icon:
  vendor: bs
  name: chevron-expand
featured: false
pinned: false
date: 2023-03-24T20:12:21+08:00
draft: false
series:
  - Docs
  - Modules
categories:
  - Bootstrap
tags:
  - Collapse
authors:
  - HugoMods
images:
---

The collapse shortcode is used to show and hide content.

<!--more-->

## Parameters

| Position | Name | Type | Required | Default | Description |
| -------- | ---- | ---- | :------: | :-----: | ----------- |
| `#0` | `heading` | string | Y | - | The heading.
| `#1` | `style` | string | - | `primary` | `primary`, `secondary`, `success`, `warning`, `info`, `danger`, `light`, `dark`.
| `#2` | `expand` | - | boolean | `false` | Whether to expand by default.

## Examples

### Steps Example

```markdown
{{</* bootstrap/collapse heading="1. Step One" expand=true */>}}
First of all ...
{{</* /bootstrap/collapse */>}}

{{%/* bootstrap/collapse "2. Step Two" secondary */%}}
And then ...
{{%/* /bootstrap/collapse */%}}

{{%/* bootstrap/collapse "3. Step Three" success */%}}
**Well done**.
{{%/* /bootstrap/collapse */%}}
```


{{< bootstrap/collapse heading="1. Step One" expand=true >}}
First of all ...
{{< /bootstrap/collapse >}}

{{% bootstrap/collapse "2. Step Two" info %}}
And then ...
{{% /bootstrap/collapse %}}

{{% bootstrap/collapse "3. Step Three" success %}}
**Well done**.
{{% /bootstrap/collapse %}}

### Files Example

````markdown
{{</* bootstrap/collapse heading="Configuration" expand=true */>}}
  {{</* bootstrap/config-toggle hugo */>}}
  params:
    message: "Hello world!"
  {{</* /bootstrap/config-toggle */>}}
{{</* /bootstrap/collapse */>}}

{{%/* bootstrap/collapse "Template" */%}}
  ```go-html-template
  <div class="greeting">
    {{ site.Params.message }}
  </div>
  ```
{{%/* /bootstrap/collapse */%}}
````

{{< bootstrap/collapse heading="Configuration" expand=true >}}
  {{< bootstrap/config-toggle hugo >}}
  params:
    message: "Hello world!"
  {{< /bootstrap/config-toggle >}}
{{< /bootstrap/collapse >}}

{{% bootstrap/collapse "Template" %}}
  ```go-html-template
  <div class="greeting">
    {{ site.Params.message }}
  </div>
  ```
{{% /bootstrap/collapse %}}
