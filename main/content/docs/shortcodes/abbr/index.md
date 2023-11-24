---
title: "Abbreviations Shortcode"
linkTitle: "Abbreviations"
description: "This shortcode is used to create abbreviations whose titles can be taken from site data or customized."
nav_weight: 1000
# nav_icon:
#   vendor: 
#   name: 
#   color: ''
featured: false
pinned: false
date: 2023-11-24T09:52:19+08:00
draft: false
series:
  - Docs
categories:
  - Shortcodes
tags:
  - Abbreviations
  - Abbr
authors:
  - HugoMods
images:
---

## Syntax

```markdown
{{</* abbr [text] [title] */>}}
```

The `[text]` is the rendered text, _case-sensitive_, which also used as the key of [data files](#abbreviations-data-files).

The `[title]` is _optional_, if present, it'll be used as the title.

## Abbreviations Data Files

The data files should be placed under the `data/abbreviations` folder, and naming it in site language code, such as `data/abbreviations/en.toml` for English site.

```toml
Hugo = "The world's fastest framework for building static websites"
HugoMods = "Hugo Modules"
```

The `Hugo` and `HugoMods` on above example data file are the `[text]` (key) of the shortcode.

## Abbreviations Examples

Let's say the data file as same as the above example data file.

### Abbreviations Using Site Data

```markdown
{{</* abbr "HugoMods" */>}} is a collection of third party modules for {{</* abbr "Hugo" */>}}.
```

{{< abbr "HugoMods" >}} is a collection of third party modules for {{< abbr "Hugo" >}}.

### Abbreviations With Specified Title

```markdown
{{</* abbr "HugoMods" "Third party Hugo modules" */>}} is a collection of third party modules for {{</* abbr "Hugo" */>}}.
```

{{< abbr "HugoMods" "Third party Hugo modules" >}} is a collection of third party modules for {{< abbr "Hugo" >}}.

### Abbreviations With Non-existent or Invalid Keys

```markdown
{{</* abbr "hugo" */>}}
{{</* abbr "foobar" */>}}
```

The {{< abbr "hugo" >}} and {{< abbr "foobar" >}} will still be rendered, but with warning messages.

```text
WARN  [abbr] missing title for "hugo"
WARN  [abbr] missing title for "foobar"
```
