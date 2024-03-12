---
type: docs
title: "CSS Variables"
description: List of CSS variables of Hugo search module.
nav_icon:
  vendor: bs
  name: filetype-css
  color: '#254bdd'
date: 2023-09-25T06:21:39+08:00
featured: false
pinned: false
draft: false
series:
  - Modules
categories:
  - Search
tags:
  - CSS
  - CSS Variables
authors:
  - HugoMods
images:
---

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
