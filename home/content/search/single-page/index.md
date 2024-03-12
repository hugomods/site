---
type: docs
title: "Single Page Mode"
description: Guide to install the search module in single page mode.
nav_weight: 3
nav_icon:
  vendor: bs
  name: window-fullscreen
  className: text-info
date: 2023-09-25T14:48:02+08:00
featured: false
pinned: false
draft: false
series:
  - Modules
categories:
  - Search
tags:
  - Single Page
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

The best practice is to include the search's CSS and JS on the search page only when sharing the same base template.

```go-html-template
<html
  lang="{{ .Lang }}"
  {{ with .Language.LanguageDirection }}dir="{{ . }}"{{ end }}>
  {{ if $isSearchPage }}
    <!-- Search CSS -->
    <!-- Search JS -->
  {{ end }}
</html>
```

But we couldn't do that, since there isn't a way to recognize whether the current page is a search page. See [hugomods/search#76](https://github.com/hugomods/search/issues/76) and [gohugoio/hugo#9368](https://github.com/gohugoio/hugo/issues/9368).

So we need a workaround, according to the Hugo look up order, we can achieve this by creating the `baseof.search.html` template for single search page, see the demo site's [baseof.search.html](https://github.com/hugomods/search/tree/main/exampleSite/layouts/_default/baseof.search.html).

{{% file-content "codes/search/css.md" %}}

{{% file-content "codes/search/js.md" %}}

## Create Entrances

We'll need to create a entrance for users, such as a link/menu to the search page, or a search form.

### Create Entrances via Partial

```go-html-template
{{ $searchURL := partial "search/functions/search-url" . }}

{{/* Link to search page. */}}
<a href="{{ $searchURL }}">Search</a>

{{/* Search form. */}}
<form action="{{ $searchURL }}">
  <input type="search" name="q">
</form>
```

The single search page accepts the following parameters from URL.

- `q`: query, the search input value.

### Create Entrances via Menu

When you're not familiar with the partials, you can simply add a menu with the `/search` URL (related to the `baseURL`).

## Set Up the Search Page and Indices

Append the `Search` and `SearchIndex` formats into `outputs.home`.

{{< bootstrap/config-toggle filename=hugo >}}
[outputs]
home = ["HTML", "RSS", "Search", "SearchIndex"]
{{< /bootstrap/config-toggle >}}
