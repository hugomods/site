---
title: "Why You Should Specify the Hugo BaseURL"
description: Why is Hugo BaseURL so important?
date: 2023-10-14T19:56:11+08:00
featured: false
pinned: false
draft: false
series:
  - Tutorials
categories:
  - Hugo
tags:
  - BaseURL
authors:
  - HugoMods
images:
---

I'm sure a lot of people have run into all sorts of problems due to forgetting to set a `BaseURL`, so today, we're going to talk about Hugo's `BaseURL` and what known issues it can cause.

## Known Issues Without `BaseURL`

### Unable to Preview Images When Making Social Sharing

Without setting correct `BaseURL`, you'll unable to preview the images when making social sharing, this is because social media platforms do not resolve images that are not absolute URLs.

### Search Engine Failed to Index the Sitemaps

Without `BaseURL`, the sitemaps URLs are all relative, and that causes search engines failed to index your pages.

## Conclusion

As noted in issues above, the `BaseURL` is very important, which is used to generate absolute URL for your site resources, such as sitemaps, images and so on, so that they can be parsed by other services and platforms correctly.
