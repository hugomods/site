---
title: "Integrate Docsy With the Search Module"
date: 2023-05-06T12:14:35+08:00
featured: false
pinned: false
draft: false
series:
categories:
tags:
  - Search
  - Docsy
authors:
  - HugoMods
images:
---

This guide shows how to integrate the Hugo [Docsy](https://www.docsy.dev/) theme with the [search]({{< relref "search" >}}) module.

<!--more-->

## Requirements

- A Docsy site which install Docsy with [Hugo modules](https://www.docsy.dev/docs/get-started/docsy-as-module/).
- Hugo Module, see also [how to use Hugo modules]({{< relref "blog/hugo/using-hugo-modules" >}}).
- Search module `>= v0.2.0`.

## Prepare Your Site

In this guide, we take the Docsy example site as an example.

```sh
git clone --depth 1 https://github.com/google/docsy-example.git docsy
cd docsy
```

## Install Missing Dependencies

The search module uses RTLCSS to generate styles for RTL sites.

```sh
npm i -D rtlcss
```

## Import Module

{{% bs/config-toggle hugo %}}
[[module.imports]]
  path = "github.com/hugomods/search"
  disable = false
[[module.imports]]
  path = "github.com/google/docsy"
  disable = false
[[module.imports]]
  path = "github.com/google/docsy/dependencies"
  disable = false
{{% /bs/config-toggle %}}

{{< bs/alert danger >}}
{{% markdownify %}}
The search module **MUST** take precedence over Docsy and it's dependencies, since some modules introduced by Docsy will break the build of Hugo modules.
{{% /markdownify %}}
{{< /bs/alert >}}

## Import CSS

{{< bs/collapse "layouts/partials/hooks/head-end.html" primary true >}}
```go-html-template
{{ partialCached "search/assets/css" . }}
```
{{< /bs/collapse >}}

## Import JS

{{< bs/collapse "layouts/partials/hooks/body-end.html" primary true >}}
```go-html-template
{{ partialCached "search/assets/js" . }}
```
{{< /bs/collapse >}}

## Override the Search Input Partial

{{< bs/collapse "layouts/partials/search-input.html" primary true >}}
```go-html-template
<div class="td-search td-search--offline search-modal-toggle position-relative">
  <div class="td-search__icon"></div>
  {{- with site.Params.search.shortcut_search }}
    <div class="position-absolute search-modal-toggle-shortcut">
      {{- range . }}
        <kbd>{{ replace . "Control" "CTRL" | upper }}</kbd>
      {{- end }}
    </div>
  {{- end }}
  <input
    type="search"
    class="td-search__input form-control"
    placeholder="{{ T "ui_search" }}"
    aria-label="{{ T "ui_search" }}"
    autocomplete="off" >
</div>
```
{{< /bs/collapse >}}

You might want to disable the `gcs_engine_id` and `offlineSearch` to remove the unused JS.

## Configure Search Module

{{% bs/config-toggle hugo %}}
[outputs]
home = ["HTML", "RSS", "SearchIndex"]
{{% /bs/config-toggle %}}

The configuration above appends the `SearchIndex` into the `home` output, to generate search index.

## Tweak the Styles

{{< bs/collapse "assets/scss/_styles_project.scss" primary true >}}
```scss
:root {
    --search-primary: #{$primary} !important;
}

.search-result {
    mark {
        padding: 0; // remove the padding of highlight matches.
    }
}

.search-modal-toggle-shortcut {
    right: 0.75rem;
    top: 0.325rem;

    kbd {
        background: #{$primary};
    }
}

.td-navbar {
    .search-modal-toggle-shortcut {
        display: none;
    }
}
```
{{< /bs/collapse >}}

## Start Hugo Server

That's it, now let's start the Hugo server to preview.
