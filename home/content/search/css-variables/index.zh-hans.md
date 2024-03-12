---
type: docs
title: "CSS 变量"
description: Hugo 搜索模块的 CSS 变量列表。
nav_icon:
  vendor: bs
  name: filetype-css
  color: '#254bdd'
date: 2023-09-25T06:21:39+08:00
featured: false
pinned: false
draft: false
series:
  - 模块
categories:
  - 搜索
tags:
  - CSS
  - CSS 变量
authors:
  - HugoMods
images:
---

你可以通过以下 CSS 变量轻松地调整搜索 UI 以适应你的主题和深色模式。

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
