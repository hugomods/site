---
title: "Hugo I18n JS Module"
linkTitle: "I18n JS"
nav_weight: 1000
nav_icon:
  vendor: bs
  name: globe2
  color: blue
featured: false
pinned: false
date: 2023-03-29T13:09:20+08:00
draft: false
series:
  - Docs
categories:
  - Module
tags:
  - I18n
authors:
  - HugoMods
images:
---

A super simple and lightweight i18n JS module for Hugo, used to render i18n stuff in JS way.

<!--more-->

{{< module "github.com/hugomods/i18n-js" >}}

## Motivation

Hugo provides the i18n feature for templates, it works fine on most cases.
However we may want to render the some HTML blocks in JS way in some cases. 
Imagine there is a JS component requires a Modal to be rendered on pages.

```html
<div class="my-modal">
    <div class="my-modal-header">{{ i18n "my_modal_title" }}</div>
    <div class="my-modal-body">
      ...
    </div>
    <div class="my-modal-footer"></div>
</div>
```

The modal markup will be part of every single HTML pages with using Hugo templates, which increase all HTML files size. 

It would be better if render in JS way, since only the file size of JS will be increased. So this module comes up, to be used to handle the i18n part in JS.

## How it works?

- Store all translations in memory, you should exclude unused translations yourself.
- Uses the language specified on the `<html>` tag when translating, i.e. `<html lang="en">`, then the `en` will be used as current language.

## Installation

{{< bootstrap/config-toggle hugo >}}
[[module.imports]]
path = "github.com/hugomods/i18n-js"
{{< /bootstrap/config-toggle >}}

## APIs

### Translator

- `constructor(translations: Translations, fallback: string)`
- `translate(key: string, ctx: Context)`

### Translations

The translations is an object that mapping from language to a set of [translation](#translation).

### Translation

A translation is an object that mapping from `key` to their formats.

```typescript
Record<string, {
    one?: string;
    other: string;
}>
```

A translation can have one or two formats as following.

- `one`: signalize format, optional.
- `other`: pluralize format.

The format is a string, which can be formatted with [Context](#context), you'll need to wrap the parameter/placeholder by curly brackets, i.e., `Hello {name}`.

### Context

The context is a name-value pairs.

```typescript
Record<string, number | string>
```

- `count` is the reserved name, if `count === 1` the `one` translation's format will be used, otherwise `other` will be used.

Let's say there is a translation.

```js
{
    one: "Found {count} result in {time}.",
    other: "Found {count} results in {time}."
}
```

| Context | Output
|---|---|
| `{ count: 1, time: '1ms'}` | `Found 1 result in 1ms.` |
| `{ count: 34, time: '10ms'}` | `Found 34 results in 10ms.` |

It's common that to highlight the `count`, we can achieve this via defining an extra parameter, such as `total`.

```js
{
    one: "Found {total} result in {time}.",
    other: "Found {total} results in {time}."
}
```

And then highlight it in the context, i.e. 

```js
{
  count: 34,
  time: '10ms',
  total: '<span class="highlight">34</span>'
}
```

## Example

Learn how to use by an example.

```typescript
import Translator from "mods/i18n/translator"
// You can also read the translations from .Site.Data and pass it via params.
// See https://gohugo.io/hugo-pipes/js/#options.
// import { default as params } from '@params'
// const translations = params.translations
const translations = {
    en: {
        home: {
            other: 'Home'
        },
        'search-result': {
            one: 'Found {count} result.',
            other: 'Found {count} results.'
        }
    },
    'zh-hans': {
        home: {
            other: '主页'
        },
        'search-result': {
            one: '找到 {count} 条结果。',
            other: '找到 {count} 条结果。'
        }
    }
}
const i18n = new Translator(translations, "en")

console.log(i18n.translate('home')) // Home
console.log(i18n.translate('search-result', { count: 1 })) // Found 1 result.
console.log(i18n.translate('search-result', { count: 8 })) // Found 8 results.
```
