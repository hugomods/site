---
title: "File Content"
linkTitle: "File Content"
description: Shortcode to read content from page resources, site resources or project files, it's useful to reuse the content, such as the code snippets.
nav_weight: 1000
nav_icon:
  vendor: bs
  name: file
  color: ''
featured: false
pinned: false
date: 2023-09-03T10:53:14+08:00
draft: false
series:
  - Docs
categories:
  - Shortcodes
tags:
  - File
  - File Content
authors:
  - HugoMods
images:
---

## File Selection Order

1. Page resources.
2. Site resources.
3. Project files.

## Syntax

```markdown
{{</* file-content "/path/to/file" */>}}
```

{{% hugo/shortcode-params "data/params.yaml" %}}

## Examples

### Reading From Page Resources

{{< page-resource-content "data/example-page-resources" >}}

### Reading From Site Resources

{{< page-resource-content "data/example-site-resources" >}}

### Reading From Project Files

{{< page-resource-content "data/example-project-files" >}}

### Reading From Nonexistent File

{{< page-resource-content "data/example-nonexistent" >}}

### Combine With Other Shortcodes

Take [Bootstrap config toggle](https://bootstrap.hugomods.com/docs/config-toggle/) as an example.

{{< page-resource-content "data/example-combination" >}}
