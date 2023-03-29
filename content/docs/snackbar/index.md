---
title: "Hugo Snackbar Module"
linkTitle: "Snackbar"
nav_weight: 1000
nav_icon:
  vendor: bs
  name: chat-square-dots
  color: gray
featured: false
pinned: false
date: 2023-03-29T12:36:05+08:00
draft: false
series:
  - Docs
categories:
  - Module
tags:
  - Snackbar
authors:
  - HugoMods
images:
---

A super lightweight (less then 50 lines code) snackbar module for Hugo, used to show short messages to clients, such as results of actions.

<!--more-->

{{< module "github.com/hugomods/snackbar" >}}

## Installation

{{< bootstrap/config-toggle hugo >}}
[[module.imports]]
path = "github.com/hugomods/snackbar"
{{< /bootstrap/config-toggle >}}

## Usage

### 1.Import the SCSS

```scss
@import "mods/code-block-panel/scss/index";
```

The path is relative to `assets` folder.

### 2.Import the JS

```ts
import snackbar from 'mods/snackbar/js/index.ts';

snackbar.add('Greeting from snackbar');
```
