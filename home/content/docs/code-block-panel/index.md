---
title: "Hugo Code Block Panel Module"
linkTitle: "Code Block Panel"
nav_weight: 1000
nav_icon:
  vendor: bs
  name: code-square
  color: "#ff7143"
featured: false
pinned: false
date: 2023-03-29T12:13:31+08:00
draft: false
series:
  - Docs
categories:
  - Module
tags:
  - Code Block
authors:
  - HugoMods
images:
---

A simple code block panel module for Hugo, which includes expand toggle, code copy button, line number toggle and wrap toggle.

<!--more-->

{{< module "github.com/hugomods/code-block-panel" >}}

## Features

- Expand toggle.
- Copy code.
- Line number toggle.
- Wrap toggle.

## Installation

### 1.Import the Module

{{< bootstrap/config-toggle hugo >}}
[[module.imports]]
path = "github.com/hugomods/code-block-panel"
{{< /bootstrap/config-toggle >}}

### 2. Required Configuration

The module requires the following configuration to be set as corresponding values.

{{< bootstrap/config-toggle hugo >}}
[markup.highlight]
lineNos = true
lineNumbersInTable = false
{{< /bootstrap/config-toggle >}}

### 3. Import CSS

You'll need import two SCSS files first.

```scss
// assets/main.scss
@import "mods/snackbar/scss/index"; // used to show the result of copying code.
@import "mods/code-block-panel/scss/index";
```

> The import paths is relative to the `assets` folder.

And then transform it to CSS in partial.

```go-html-template
{{ $css := resources.Get "main.scss" }}
{{ $css = $css | toCSS }}
<link rel="stylesheet" href="{{ $css.RelPermalink }}" />
```

### 4. Import JS

You can import JS via either Hugo Pipes or Partial.

#### 4.1 Import JS via Hugo Pipes

```go-html-template
{{ $js := resources.Get "main.ts" | js.Build }}
{{ $codeJS := partialCached "code-block-panel/assets/js-resource" . }}
{{ $js = slice $js $searchJS | resources.Concat "js/main.js" }}
<script src="{{ $js.RelPermalink }}" defer></script>
```

#### 4.1 Import JS via Partial

```go-html-template
{{ partialCached "code-block-panel/assets/js" . }}
```

## Site Parameters

{{< bootstrap/config-toggle hugo >}}
[params.code_block_panel]
max_lines = 10
{{< /bootstrap/config-toggle >}}

| Name        |  Type   | Default | Description                            |
| ----------- | :-----: | :-----: | -------------------------------------- |
| `line_nos`  | boolean | `true`  | Show/Hide the line numbers by default. |
| `max_lines` | number  |  `10`   | The max visible lines.                 |
| `wrap`      | boolean | `false` | When `true`, wrap the code by default. |

## Code Block Attributes

You can override the site parameters for particular code block by adding data attributes to the code block.

| Name   |  Type   | Default | Description                                 |
| ------ | :-----: | :-----: | ------------------------------------------- |
| `data-expand` | boolean | - | Whether to expand the code by default, `true`/`1` means expand, `false`/`0` means not expand. |
| `data-line-nos` | boolean | - | Whether to show line numbers by default, `true`/`1` means enabled, `false`/`0` means disabled. |
| `data-max-lines` | number | - | The maximum number of lines to show. |
| `data-wrap` | boolean | - |  Whether to wrap the code by default, `true`/`1` or `false`/`0`. |

## Examples

```html
<!DOCTYPE html>
<html>
  <head>
    <title>Hugo Code Block Panel Module Example</title>
  </head>
  <body>
    <div class="lead">
      Hello world!
    </div>
    <p>
      A very looooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooog text for showing how the wrap toggle work.
    </p>
  </body>
</html>
```
