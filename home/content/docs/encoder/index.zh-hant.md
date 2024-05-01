---
title: "Hugo 編碼模塊"
linkTitle: "編碼"
description: "對文本進行編碼以保護電子郵件地址和電話號碼不受垃圾郵件機器人的攻擊。"
nav_weight: 1000
nav_icon:
  vendor: bs
  name: asterisk
featured: false
pinned: false
date: 2024-05-01T12:00:05+08:00
draft: false
series:
  - 文檔
categories:
  - 模塊
tags:
  - 編碼
  - 郵件
  - 電話號碼
authors:
  - HugoMods
images:
---

{{< module "github.com/hugomods/encoder" >}}

## 短代碼

### `encode` 短代碼

#### `encode` 短代碼語法

```markdown
{{</* encode [text] */>}}
```

{{% hugo/shortcode-params data="code/encode-params.yaml" heading="`encode` 短代碼參數" headingStartLevel=4 %}}

##### 對郵箱地址進行編碼

{{% page-resource-content "code/example-encode-email" %}}

##### 對電話號碼進行編碼

{{% page-resource-content "code/example-encode-telephone" %}}

### `encode-link` 短代碼

#### `encode-link` 短代碼語法

```markdown
{{</* encode-link [protocol] [target] [text] */>}}
```

{{% hugo/shortcode-params data="code/encode-link-params.yaml" heading="`encode-link` 短代碼參數" headingStartLevel=4 %}}

##### `encode-link` 郵箱鏈接示例

{{< page-resource-content "code/example-encode-link-email" >}}

##### `encode-link` 電話號碼示例

{{< page-resource-content "code/example-encode-link-telephone" >}}

### `encode-email` 短代碼

`encode-link` 郵箱鏈接短代碼的快捷方式，其無需指定 `protocol` 參數。

```markdown
{{</* encode-email [target] [text] */>}}
```

### `encode-tel` 短代碼

`encode-link` 電話號碼短代碼的快捷方式，其無需指定 `protocol` 參數。

```markdown
{{</* encode-tel [target] [text] */>}}
```
