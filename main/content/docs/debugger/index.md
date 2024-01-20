---
title: "Hugo Debugger Module"
linkTitle: "Debugger"
description: A simple debug panel for Hugo development, which prints information about current page on the bottom, such as rendering time, page kind, page type, page layout and so on.
nav_weight: 1000
nav_icon:
  vendor: bs
  name: bug
  className: text-danger
featured: false
pinned: false
date: 2024-01-20T17:10:54+08:00
draft: false
series:
  - Docs
categories:
  - Modules
tags:
  - Debug
authors:
  - HugoMods
images:
---

{{< module "github.com/hugomods/debugger" >}}

![Hugo Debugger Module Preview](preview.png#center "Hugo Debugger Module")

{{% bs/alert %}}
It's an experimental module, please feel free to submit feedback and share your ideas.
{{% /bs/alert %}}

## Installation

### Import the Module

{{< bs/config-toggle filename=hugo title="Site Configurations" >}}
module:
  imports:
    - path: github.com/hugomods/debugger
{{< /bs/config-toggle >}}

### Include the `debugger/begin` Partial

{{% skip-if-hugopress %}}

```go-html-template
{{ partial "debugger/begin" . }}
```

### Include the `debugger/end` Partial

{{% skip-if-hugopress %}}

```go-html-template
{{ partial "debugger/end" . }}
```
