---
title: "Hugo Encoder Module"
linkTitle: "Encoder"
description: "Encode text to protect email address and telephone number from spam bots."
nav_weight: 1000
nav_icon:
  vendor: bs
  name: asterisk
featured: false
pinned: false
date: 2024-05-01T12:00:05+08:00
draft: false
series:
  - Docs
categories:
  - Module
tags:
  - Encode
  - Email
  - Telephone number
authors:
  - HugoMods
images:
---

{{< module "github.com/hugomods/encoder" >}}

## Shortcodes

### `encode` Shortcode

#### `encode` Shortcode Syntax

```markdown
{{</* encode [text] */>}}
```

{{% hugo/shortcode-params data="code/encode-params.yaml" heading="`encode` Shortcode Parameters" headingStartLevel=4 %}}

##### Encode Plain Email

{{% page-resource-content "code/example-encode-email" %}}

##### Encode Plain Telephone Number

{{% page-resource-content "code/example-encode-telephone" %}}

### `encode-link` Shortcode

#### `encode-link` Shortcode Syntax

```markdown
{{</* encode-link [protocol] [target] [text] */>}}
```

{{% hugo/shortcode-params data="code/encode-link-params.yaml" heading="`encode-link` Shortcode Parameters" headingStartLevel=4 %}}

##### `encode-link` Email Examples

{{< page-resource-content "code/example-encode-link-email" >}}

##### `encode-link` Telephone Number Examples

{{< page-resource-content "code/example-encode-link-telephone" >}}

### `encode-email` Shortcode

A shorthand of `encode-link` for email address that without requirements of specifying the `protocol` parameter.

```markdown
{{</* encode-email [target] [text] */>}}
```

### `encode-tel` Shortcode

A shorthand of `encode-link` for telephone number that without requirements of specifying the `protocol` parameter.

```markdown
{{</* encode-tel [target] [text] */>}}
```
