---
title: "File Content Shortcode"
linkTitle: "File Content"
description: Reading content from page resources, site resources or static files, it's useful to reuse the content, such as the code snippets, notes and so on.
nav_weight: 1000
# nav_icon:
#   vendor: 
#   name: 
#   color: ''
featured: false
pinned: false
date: 2023-09-03T10:53:14+08:00
draft: false
series:
  - Docs
categories:
tags:
authors:
  - HugoMods
images:
---

## File Selection Order

1. Page resource.
2. Site resource.
3. Project files.

## Syntax

```markdown
{{</* file-content "/path/to/file" */>}}
```

## Parameters

{{% shortcode-params "data/params.yaml" %}}

## Examples

### Reading From Page Resource

{{% bs/collapse "content/docs/shortcodes/file-content/data/foo.txt" %}}
```text
bar
```
{{% /bs/collapse %}}

```markdown
{{</* file-content "data/foo.txt" */>}}
```

{{< file-content "data/foo.txt" >}}

### Reading From Site Resource

{{% bs/collapse "assets/data/hello.js" %}}
```js
console.log('Hello world!')
```
{{% /bs/collapse %}}

````markdown
```js
{{</* file-content "data/hello.js" */>}}
```
````

```js
{{< file-content "data/hello.js" >}}
```

### Reading From Projects File

{{% bs/collapse "static/ads.txt" %}}
```text
google.com, pub-7827859788508375, DIRECT, f08c47fec0942fa0
```
{{% /bs/collapse %}}

```markdown
{{</* file-content "static/ads.txt" */>}}
```

{{< file-content "static/ads.txt" >}}

### Reading From Nonexistent File

```markdown
{{</* file-content "static/invalid.txt" */>}}
```

{{< file-content "static/invalid.txt" >}}

### Combine With Other Shortcodes

Take [Bootstrap config toggle]({{< relref "bootstrap/config-toggle" >}}) as an example.

{{% bs/collapse "content/docs/shortcodes/file-content/data/hugo.yaml" %}}
```yaml
title: Site Title
```
{{% /bs/collapse %}}

```markdown
{{</* bs/config-toggle hugo */>}}
{{</* file-content "data/hugo.yaml" */>}}
{{</* /bs/config-toggle */>}}
```

{{< bs/config-toggle hugo >}}
{{< file-content "data/hugo.yaml" >}}
{{< /bs/config-toggle >}}
