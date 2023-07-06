---
title: "Hugo Search Module"
linkTitle: "Search"
nav_weight: 5
nav_icon:
  vendor: bs
  name: search
  color: '#65c6e0'
menu:
  main:
    parent: modules
    params:
      icon:
        vendor: bs
        name: search
        color: '#65c6e0'
featured: true
pinned: false
date: 2023-03-24T20:55:07+08:00
draft: false
series:
  - Docs
  - Module
categories:
  - Search
tags:
  - Fuse.js
authors:
  - HugoMods
---

A powerful, flexible and responsive [Hugo](https://gohugo.io/) client side fuzzy search module built on top of [Fuse.js](https://github.com/krisk/Fuse).

<!--more-->

{{< module "github.com/hugomods/search" >}}

## Features

- Fast: the [demo site](https://hugomods.github.io/search/) built with 10k posts (~30k pages), see also the [GitHub Pages workflow](https://github.com/hugomods/search/actions/workflows/gh-pages.yml).
- Modes: single search page and modal (auto complete).
- Lazy loading: the search indices were loading on demand.
- Fuzzy search by title, summary, headings and content, the content was disabled by default.
- [Flexible and configurable](#parameters).
- Built-in responsive, theme-less UI and interactive logic.
- Allow restyling the UI with [CSS variables](#css-variables).
- Pagination: load more when scrolling to the bottom of results.
- Highlighting matches.
- Statistic: the number of search results, search time.
- Results navigation: `↑` and `↓` to navigate, `⏎` to select.
- Filters: filterable by language.
- Sorting: sortable by score and date.
- [Internationalization (i18n)](#internationalization).
- Multilingual search: searchable from single language or all languages.
- Lightweight.

<div align="center">

|            |   CSS   |   JS    |  Total  |
| ---------- | :-----: | :-----: | :-----: |
| Compressed | `~20kB` | `~47kB` | `~67kB` |
| Gzip       | `~6kB`  | `~15kB` | `~21kB` |

</div>

- Configurable shortcuts.

<div align="center">

| Default Shortcuts              | Description |
| ------------------------------ | ----------- |
| <kbd>CTRL</kbd> + <kbd>K</kbd> | to search.  |
| <kbd>ESC</kbd>                 | to close.   |

</div>

- Excluding pages by setting the `noindex` page parameter as `true`.
- RTL languages support: experimental.

## Requirements

- Hugo **extended** version `v0.110.0` above.
- [Hugo Module](https://gohugo.io/hugo-modules/use-modules/#prerequisite).
- PostCSS, Autoprefixer and RTLCSS, you can install those dependencies via one command `npm i postcss-cli autoprefixer rtlcss`.

## Integration Guide

There is an [example site](https://hugomods.github.io/search/) and it's [source code](https://github.com/hugomods/search/tree/main/exampleSite) to help you get started.

There also a guide for [integrating Docsy with the search module]({{< relref "blog/docsy-search" >}}).

### 1. Import the module

```toml
[[modules.imports]]
path = "github.com/hugomods/search"
```

### 2. Single Search Page Base Template

> Skip this step if you're not using single search page.

When using single search page, we probably want to include the search's CSS and JS on that page only.

```go-html-template
// baseof.html
{{ if $isSearchPage }}
  ...
{{ end }}
```

But we couldn't do that, since there isn't a way to recognize whether the current page is a search page. See [hugomods/search#76](https://github.com/hugomods/search/issues/76) and [gohugoio/hugo#9368](https://github.com/gohugoio/hugo/issues/9368).

So we need a workaround, according to the Hugo look up order, we can achieve this by creating the `baseof.search.html` template for single search page, see the demo site's [baseof.search.html](https://github.com/hugomods/search/tree/main/exampleSite/layouts/_default/baseof.search.html).

### 3. Include the CSS

There are three approaches to include the CSS. The first two approaches are recommended for modal mode, since the CSS file is too small as a single CSS file, embed the CSS into your own bundle is helpful to reduce extra HTTP requests.
The last approach is recommended in the case of using only the single search page mode.

#### Include the CSS via Hugo Pipe (Recommended)

```go-html-template
{{/* NOTE: we must change the CSS target to separate the style between LTR and RTL sites. */}}
{{/* Otherwise, Hugo may treats it as the same style (cached). */}}
{{/* Ignore it if your themes and sites aren't going to support RTL. */}}
{{ $rtl := eq .Language.LanguageDirection "rtl" }}
{{ $cssTarget := cond $rtl "css/main.rtl.css" "css/main.css" }}
{{ $css := resources.Get "main.scss" | toCSS }}
{{ $searchCSS := partial "search/assets/css-resource" . }}
{{ $css = slice $searchCSS $css | resources.Concat $cssTarget }}
<link rel="stylesheet" href="{{ $css.RelPermalink }}" />
```

- Note that `slice $searchCSS $css` puts the `$css` after `$searchCSS`, so that `$css` style can override the search's.
- The `search/assets/css-resource` is a partial that returns a search CSS resource.

#### Import the CSS via SCSS File (Recommended)

```scss
@import "search/scss/index";
```

This way is more complex than the former, you'll need to take care of the [PostCSS](https://gohugo.io/hugo-pipes/postcss/), Autoprefixer and [RTLCSS](https://rtlcss.com/).
See how [CSS resource partial](https://github.com/hugomods/search/tree/main/layouts/partials/search/assets/css-resource.html) does.

#### Include the CSS via Partial (Recommended for Single Search Page)

This approach generates a `<link>` tag.

```go-html-template
{{ partial "search/assets/css" . }}
```

### 4. Include the JavaScript

We can achieve this via two ways.

#### Include the JavaScript via Hugo Pipe (Recommended)

```go-html-template
{{ $js := resources.Get "main.ts" | js.Build }}
{{ $searchJS := partial "search/assets/js-resource" . }}
{{ $js = slice $js $searchJS | resources.Concat "js/main.js" }}
<script src="{{ $js.RelPermalink }}" defer></script>
```

> Please note that you should not set the `async` attribute on the `script`.

- The `search/assets/js-resource` is a partial that returns a search JS resource.

#### Include the JavaScript via Partial (Recommended for Single Search Page)

This partial will generate a `<script>` tag.

```go-html-template
{{ partial "search/assets/js" . }}
```

### 5. Create a Modal Toggle Button (Optional)

> Skip this step if you're not using the modal (auto complete) mode.

This step is optional, you're still be able to open the search modal by shortcuts (default to <kbd>CTRL</kbd> + <kbd>K</kbd>), but I recommend adding such a toggle button for getting better user experience, because users are not aware of these shortcuts.

Adjust the button to your theme UI, place it wherever you like, for example,

```html
<button class="search-modal-toggle">Search</button>
```

- The toggle _button_ can be any HTML tag, not just the `button`, since the module will listen the `click` event on the tags have the `search-modal-toggle` class name, this also means that the page can contain multiple toggle _buttons_.

### 6. Create a Form or Link for Single Search Page (Optional)

> Skip this step if you're not using the single search page mode.

When using single search page mode, we'll need to create a entrance for users, such as a link to the search page, or a search form.

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

### 7. Set up the search index

Append the `Search` and `SearchIndex` formats into `outputs.home`.

> The `Search` format is required by the single search page, remove it if you're using the modal mode only.

{{< bootstrap/config-toggle filename=hugo >}}
[outputs]
home = ["HTML", "Search", "SearchIndex"]
{{< /bootstrap/config-toggle >}}

## CSS Variables

You can easily to adjust the search UI to fit your theme and dark mode via the following CSS variables.

```css
:root {
  --search-primary: skyblue;
}
```

| Name                                     | Description                                                  |
| ---------------------------------------- | ------------------------------------------------------------ |
| `--search-primary`                       | Primary color.                                               |
| `--search-container-bg`                  | Container background color.                                  |
| `--search-bg`                            | Background color.                                            |
| `--search-color`                         | Primary text color.                                          |
| `--search-color-secondary`               | Secondary text color.                                        |
| `--search-result-bg`                     | Result background color.                                     |
| `--search-result-bg-active`              | Result background color on active.                           |
| `--search-result-color`                  | Primary result text color.                                   |
| `--search-result-color-active`           | Primary result text color on active.                         |
| `--search-result-color-secondary`        | Secondary result text color.                                 |
| `--search-result-color-secondary-active` | Secondary result text color on active.                       |
| `--search-result-highlight-bg`           | The highlight result background color, default to `inherit`. |
| `--search-result-highlight-color`        | The highlight result color, default to `inherit`.            |
| `--search-border-color`                  | Border color.                                                |

## Site Parameters

{{< bootstrap/config-toggle filename=hugo >}}
[params.search]
stall_threshold = 200
# ...
{{< /bootstrap/config-toggle >}}

| Name | Type | Default | Description |
| ---- | :--: | :-----: | ----------- |
| `stall_threshold` | Integer | `300`| How many milliseconds must elapse before considering the autocomplete experience stalled. |
| `case_sensitive` | Boolean |`false` | Indicates whether comparisons should be case sensitive. |
| `min_match_char_length` | Integer |`1` | Only the matches whose length exceeds this value will be returned. (For instance, if you want to ignore single character matches in the result, set it to `2`). |
| `location`| Integer |`0` | Determines approximately where in the text is the pattern expected to be found. |
| `threshold` | Integer | `0.6`| At what point does the match algorithm give up. A threshold of `0.0` requires a perfect match (of both letters and location), a threshold of `1.0` would match anything.|
| `distance`| Integer | `100`| Determines how close the match must be to the fuzzy location (specified by location). An exact letter match which is distance characters away from the fuzzy location would score as a complete mismatch. A distance of 0 requires the match be at the exact location specified. A distance of `1000` would require a perfect match to be within `800` characters of the location to be found using a threshold of `0.8`. |
| `ignore_location` | Boolean |`false` | When true, search will ignore location and distance, so it won't matter where in the string the pattern appears.|
| `shortcut_close`|Array|`["Escape"]`| Shortcuts to close the search modal. Empty array means disabled. See [key values for keyboard events](https://developer.mozilla.org/en-US/docs/Web/API/UI_Events/Keyboard_event_key_values).|
| `shortcut_search` |Array| `["Control", "k"]` | Shortcuts to open the search modal. Leave it empty to disable.|
| `paginate`| Integer |`20`| How many results per page, at least `20`, for making sure the load more event will be able to trigger.|
| `max_results` | Integer | `100`| Denotes the max number of returned search results.|
| `index_content` | Boolean |`false` | When `true`, the engine will also search by content, you may need to tweak the `distance` parameter as well. Please note that, it may become a performance killer on a large site.|
| `index_all_pages` | Boolean | `true` | When `true`, all pages except `noindex` pages will be indexed, include non-regular pages, such as home and taxonomy lists.|
| `expand_results_meta` | Boolean |`false` | When `true`, expand the results meta by default.|
| `modal_container` | String| `body` | The container for the search modal. It should be a valid CSS selector. Leave it empty if you're using single search page mode only. |
| `modal_toggle_selector` | string | `.search-modal-toggle` | The search modal toggle selector. |
| `lazy_loading` | Boolean | `true` | Lazy loading the indices. |
| `filter_taxonomies` | Boolean | `true` | Whether to enable the taxonomies filter. |
| `filter_years` | Boolean | `true` | Whether to enable the years filter. |

## Page Parameters

> AKA front matter.

| Name | Type | Default | Description |
| ---- | :--: | :-----: | ----------- |
| `noindex` | Boolean | `false` | When `true`, the page won't be indexed, that is, it won't appear on the search results. |

## Internationalization

Currently, this module supports the following languages, please feel free to open a PR to add more languages.

> The translations are stored in the [`data/search/i18n`](https://github.com/hugomods/search/tree/main/data/search/i18n) folder, it's different from Hugo i18n, since the module using JS instead of templates to render the HTML markup.

- English (`en`)
- German (`de`)
- Simplified Chinese (`zh-hans`)
- Traditional Chinese `zh-hant`)

### Custom i18n Translations

Let's take the `input_placeholder` as an example, just create the corresponding translations file under your project's root.

```toml
# data/search/i18n/en.toml
[input_placeholder]
other = "SEARCH INPUT PLACEHOLDER"
```

Now, the `input_placeholder` will be `SEARCH INPUT PLACEHOLDER` in `en` sites.

All the available translations' keys can be found at [`data/search/i18n`](https://github.com/hugomods/search/tree/main/data/search/i18n) folder.

## Partial's Functions

| Function                      | Description                                                                                                                                 |
| ----------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------- |
| `search/functions/search-url` | Returns the search URL of current language site, which can be used to generate a link to the search page or the `action` for a search form. |
