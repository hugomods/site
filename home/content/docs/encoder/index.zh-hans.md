---
title: "Hugo 编码模块"
linkTitle: "编码"
description: "对文本进行编码以保护电子邮件地址和电话号码不受垃圾邮件机器人的攻击。"
nav_weight: 1000
nav_icon:
  vendor: bs
  name: asterisk
featured: false
pinned: false
date: 2024-05-01T12:00:05+08:00
draft: false
series:
  - 文档
categories:
  - 模块
tags:
  - 编码
  - 邮件
  - 电话号码
authors:
  - HugoMods
images:
---

{{< module "github.com/hugomods/encoder" >}}

## 短代码

### `encode` 短代码

#### `encode` 短代码语法

```markdown
{{</* encode [text] */>}}
```

{{% hugo/shortcode-params data="code/encode-params.yaml" heading="`encode` 短代码参数" headingStartLevel=4 %}}

##### 对邮箱地址进行编码

{{% page-resource-content "code/example-encode-email" %}}

##### 对电话号码进行编码

{{% page-resource-content "code/example-encode-telephone" %}}

### `encode-link` 短代码

#### `encode-link` 短代码语法

```markdown
{{</* encode-link [protocol] [target] [text] */>}}
```

{{% hugo/shortcode-params data="code/encode-link-params.yaml" heading="`encode-link` 短代码参数" headingStartLevel=4 %}}

##### `encode-link` 邮箱链接示例

{{< page-resource-content "code/example-encode-link-email" >}}

##### `encode-link` 电话号码示例

{{< page-resource-content "code/example-encode-link-telephone" >}}

### `encode-email` 短代码

`encode-link` 邮箱链接短代码的快捷方式，其无需指定 `protocol` 参数。

```markdown
{{</* encode-email [target] [text] */>}}
```

### `encode-tel` 短代码

`encode-link` 电话号码短代码的快捷方式，其无需指定 `protocol` 参数。

```markdown
{{</* encode-tel [target] [text] */>}}
```
