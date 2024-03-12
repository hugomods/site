---
type: docs
title: "Modal Mode"
description: Guide to install the search module in modal mode.
nav_weight: 2
nav_icon:
  vendor: bs
  name: window-stack
  className: text-warning
date: 2023-09-25T14:47:57+08:00
featured: false
pinned: false
draft: false
series:
  - Modules
categories:
  - Search
tags:
  - Modal
authors:
  - HugoMods
images:
---

> Please make sure you have meet the [requirements]({{< relref "search/requirements" >}}).

## Examples

There is an [example site](https://hugomods.github.io/search/) and it's [source code](https://github.com/hugomods/search/tree/main/exampleSite) to help you get started.

There also a guide for [integrating Docsy with the search module]({{< relref "blog/docsy-search" >}}).

## Import the module

{{< bs/config-toggle hugo >}}
{{< file-content "codes/search/import.toml" >}}
{{< /bs/config-toggle >}}

## Base Template

You should specify the `lang` and `dir` attributes on `<html>` tag of base template (`layouts/_default/baseof.html` by default), so that the module can recognize and render in current page language.

{{% file-content "codes/search/baseof.md" %}}

{{% file-content "codes/search/css.md" %}}

{{% file-content "codes/search/js.md" %}}

## Create Modal Toggle Buttons

This step is optional, you're still be able to open the search modal by shortcuts (default to <kbd>CTRL</kbd> + <kbd>K</kbd>), but I recommend adding such a toggle button for getting better user experience, because users are not aware of these shortcuts.

Adjust the button to your theme UI, place it wherever you like, for example,

```html
<button class="search-modal-toggle">Search</button>
```

- The toggle _button_ can be any HTML tag, not just the `button`, since the module will listen the `click` event on the HTML elements have the [modal_toggle_selector]({{< relref "/search/configurations#modal_toggle_selector" >}}) specified class name (default to `.search-modal-toggle`), this also means that the page can contain multiple toggle _buttons_.

## Set Up the Search Indices

Append the `SearchIndex` formats into `outputs.home`.

{{< bootstrap/config-toggle filename=hugo >}}
[outputs]
home = ["HTML", "RSS", "SearchIndex"]
{{< /bootstrap/config-toggle >}}
