---
title: "Hugo 搜索模块"
linkTitle: "搜索"
nav_weight: 5
nav_icon:
  vendor: bs
  name: search
  color: '#65c6e0'
featured: true
pinned: false
date: 2023-03-24T20:55:07+08:00
draft: false
series:
  - 文档
categories:
  - 模块
  - 搜索
tags:
  - Fuse.js
authors:
  - HugoMods
---

一个基于 [Fuse.js](https://github.com/krisk/Fuse) 的强大的、灵活的和响应式的 [Hugo](https://gohugo.io/) 客户端模糊搜索模块。

<!--more-->

{{< module "github.com/hugomods/search" >}}

## 功能特性

- 快速：[示例站点](https://hugomods.github.io/search/) 有着 10k 篇文章（约 30k 个页面），另请查阅 [GitHub Pages workflow](https://github.com/hugomods/search/actions/workflows/gh-pages.yml)。
- 模式：支持单页和模态框（自动补全）。
- 延迟加载：按需加载搜索索引。
- 可按照标题、摘要、子标题和内容（默认关闭）进行模糊搜索。
- [灵活和可配置的](#parameters)。
- 内置响应式的、独立于主题的 UI 和交互逻辑。
- 可通过 [CSS 变量](#css-variables)修改 UI。
- 分页：滚动到结果底部时加载下一页。
- 匹配项高亮。
- 统计：搜索结果数和执行时间。
- 搜索结果导航：`↑`、`↓` 和 `⏎`。
- 可按语言过滤搜索结果。
- 可按匹配值和日期进行排序。
- [国际化](#internationalization)。
- 跨站点/多语言搜索。
- 轻量级。

<div align="center">

|            |   CSS   |   JS    |  Total  |
| ---------- | :-----: | :-----: | :-----: |
| Compressed | `~20kB` | `~47kB` | `~67kB` |
| Gzip       | `~6kB`  | `~15kB` | `~21kB` |

</div>

- 可配置的快捷键。

<div align="center">

| Default Shortcuts              | Description |
| ------------------------------ | ----------- |
| <kbd>CTRL</kbd> + <kbd>K</kbd> | to search.  |
| <kbd>ESC</kbd>                 | to close.   |

</div>

- 可通过设置页面参数 `noindex` 为 `true` 以避免被索引。
- 支持 RTL 语言。

## 必要条件

- Hugo **extended** `v0.110.0` 以上版本.
- [Hugo Module](https://gohugo.io/hugo-modules/use-modules/#prerequisite).
- PostCSS, Autoprefixer 和 RTLCSS，可通过 `npm i postcss-cli autoprefixer rtlcss` 安装。

## 集成指南

我们提供了一个[示例站点](https://hugomods.github.io/search/)及其[源码](https://github.com/hugomods/search/tree/main/exampleSite)，以便你快速开始。

### 1. 导入模块

```toml
[[modules.imports]]
path = "github.com/hugomods/search"
```

### 2. 单页搜索基础模板

> 若你不打算使用单页搜索，可跳过此步骤。

使用单页搜索时，最理想的情况是只于搜索页面中加载对应的 CSS 和 JS，如：

```go-html-template
// baseof.html
{{ if $isSearchPage }}
  ...
{{ end }}
```

但是无法这么做，因为目前没有办法区分当前页面是否一个搜索页面，详情请参阅 [hugomods/search#76](https://github.com/hugomods/search/issues/76) 和 [gohugoio/hugo#9368](https://github.com/gohugoio/hugo/issues/9368)。

因此我们需要一个变通方法，基于 Hugo 的模板查找顺序，我们可以通过为单页搜索创建一个基础模板 `baseof.search.html`，如示例站点的 [baseof.search.html](https://github.com/hugomods/search/tree/main/exampleSite/layouts/_default/baseof.search.html)。

### 3. 加载 CSS

There are three approaches to include the CSS. The first two approaches are recommended for modal mode, since the CSS file is too small as a single CSS file, embed the CSS into your own bundle is helpful to reduce extra HTTP requests.
The last approach is recommended in the case of using only the single search page mode.

#### 通过 Hugo Pipe 加载 CSS （推荐）

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

#### 通过导入 SCSS 加载 CSS （推荐）

```scss
@import "search/scss/index";
```

This way is more complex than the former, you'll need to take care of the [PostCSS](https://gohugo.io/hugo-pipes/postcss/), Autoprefixer and [RTLCSS](https://rtlcss.com/).
See how [CSS resource partial](https://github.com/hugomods/search/tree/main/layouts/partials/search/assets/css-resource.html) does.

#### 通过模板加载 CSS (推荐用于单页搜索)

This approach generates a `<link>` tag.

```go-html-template
{{ partial "search/assets/css" . }}
```

### 4. 加载 JavaScript

We can achieve this via two ways.

#### 通过 Hugo Pipes 加载 JavaScript （推荐）

```go-html-template
{{ $js := resources.Get "main.ts" | js.Build }}
{{ $searchJS := partial "search/assets/js-resource" . }}
{{ $js = slice $js $searchJS | resources.Concat "js/main.js" }}
<script src="{{ $js.RelPermalink }}" defer></script>
```

> Please note that you should not set the `async` attribute on the `script`.

- The `search/assets/js-resource` is a partial that returns a search JS resource.

#### 通过模板加载 JavaScript（推荐用于单页搜索）

This partial will generate a `<script>` tag.

```go-html-template
{{ partial "search/assets/js" . }}
```

### 5. 创建模态框唤起按钮

> 若不使用模态框（自动补全）搜索则跳过本步骤。

Adjust the button to your theme UI, place it wherever you like, for example,

```html
<button class="search-modal-toggle">Search</button>
```

- The toggle _button_ can be any HTML tag, not just the `button`, since the module will listen the `click` event on the tags have the `search-modal-toggle` class name, this also means that the page can contain multiple toggle _buttons_.

### 6. 创建单页搜索表单或链接

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

### 7. 设置搜索索引

Append the `Search` and `SearchIndex` formats into `outputs.home`.

> The `Search` format is required by the single search page, remove it if you're using the modal mode only.

{{< bootstrap/config-toggle filename=hugo >}}
[outputs]
home = ["HTML", "Search", "SearchIndex"]
{{< /bootstrap/config-toggle >}}

## CSS 变量

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

## 站点参数

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

## 页面参数

> AKA front matter.

| Name | Type | Default | Description |
| ---- | :--: | :-----: | ----------- |
| `noindex` | Boolean | `false` | When `true`, the page won't be indexed, that is, it won't appear on the search results. |

## 国际化

Currently, this module supports the following languages, please feel free to open a PR to add more languages.

> The translations are stored in the [`data/search/i18n`](https://github.com/hugomods/search/tree/main/data/search/i18n) folder, it's different from Hugo i18n, since the module using JS instead of templates to render the HTML markup.

- English (`en`)
- Simplified Chinese (`zh-hans`)
- Traditional Chinese `zh-hant`)

### 自定义国际化翻译

Let's take the `input_placeholder` as an example, just create the corresponding translations file under your project's root.

```toml
# data/search/i18n/en.toml
[input_placeholder]
other = "SEARCH INPUT PLACEHOLDER"
```

Now, the `input_placeholder` will be `SEARCH INPUT PLACEHOLDER` in `en` sites.

All the available translations' keys can be found at [`data/search/i18n`](https://github.com/hugomods/search/tree/main/data/search/i18n) folder.

## 模板函数

| Function                      | Description                                                                                                                                 |
| ----------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------- |
| `search/functions/search-url` | Returns the search URL of current language site, which can be used to generate a link to the search page or the `action` for a search form. |
