---
title: Has ToC
linkTitle: Has ToC
description: Function to indicate whether the current page has table of contents.
date: 2024-03-07T20:12:52+08:00
nav_icon:
  vendor: bs
  name: list-ul
categories:
  - Docs
tags:
  - ToC
  - Table of Contents
---

## Backgrounds

The `.TableOfContents` is not always empty string when there is no table of contents, it may be `<nav id="TableOfContents"></nav>`, and the function is used to deal with this case.

## Usage

The function accepts the _page_ variable as the context, and return a boolean value indicates whether the given page has table of contents.

{{< page-resource-content "codes/usage" >}}
