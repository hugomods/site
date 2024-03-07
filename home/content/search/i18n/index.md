---
type: docs
title: "Internationalization"
description: List of supported languages of Hugo search module, and describe how to add more.
nav_icon:
  vendor: bs
  name: translate
  className: text-info
date: 2023-09-25T15:24:10+08:00
featured: false
pinned: false
draft: false
series:
  - Modules
categories:
  - Search
tags:
  - Internationalization
  - i18n
authors:
  - HugoMods
images:
---

## Supported Languages

| Language             | Code      |
| -------------------- | :-------: |
| German               | `de`      |
| English              | `en`      |
| French               | `fr`      |
| Korean               | `ko`      |
| Malay                | `ms`      |
| Dutch                | `nl`      |
| Brazilian Portuguese | `pt-br`   |
| Russian              | `ru`      |
| Simplified Chinese   | `zh-hans` |
| Traditional Chinese  | `zh-hant` |

## How to Add Language?

The translations are stored in the [data/search/i18n](https://github.com/hugomods/search/tree/main/data/search/i18n) folder, it's different from Hugo i18n, since the module using JS instead of templates to render the HTML markup.

1. Fork and clone the [repository](https://github.com/hugomods/search).
1. Copy the `data/search/i18n/en.toml` and naming it with [language code](https://en.wikipedia.org/wiki/List_of_ISO_639-1_codes), i.e. `fr.toml`, `ru.toml`.
1. Translate the items.
1. Create a pull request.

## Customize I18n Translations

Let's take the `input_placeholder` as an example, just create the corresponding translations file under your project's root.

```toml
# data/search/i18n/en.toml
[input_placeholder]
other = "SEARCH INPUT PLACEHOLDER"
```

Now, the `input_placeholder` will be `SEARCH INPUT PLACEHOLDER` in `en` sites.

All the available translations' keys can be found at [`data/search/i18n`](https://github.com/hugomods/search/tree/main/data/search/i18n) folder.
