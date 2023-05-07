---
title: "How to Configure Giscus"
date: 2023-05-07T09:55:17+08:00
featured: false
pinned: false
draft: false
series:
  - Tutorials
categories:
tags:
  - Giscus
authors:
  - HugoMods
images:
---

Unlike Utterances, it's a little bit complex to configure Giscus, since we have to configure the GitHub repository's ID and the discussion category's ID. This article describes how to set up Giscus properly.

<!--more-->

## Install and Configure Giscus App

Firstly, you'll need to install and configure [GitHub Giscus App](https://github.com/apps/giscus) for your **public** repository.
Please making sure that your repository can be accessed by Giscus. For example.

![Configure Giscus](configure.png#center)

## Enable GitHub Discussion

The discussion is disabled by default, you should enable it for your repository.

1. Navigate to the _Settings_.
1. Switch to the _General_ tab.
1. Check the _Discussions_ feature.

## Fetch Repository ID and Discussion Category ID

And then get back to the [Giscus](https:///giscus.app/) site, and fill up the form.

1. Type your repository on the _repository_ input, i.e. `hbstack/theme`.
1. Select the _Discussion Category_.

Once done, the data required by [Giscus module]({{< relref "docs/comment-engines/giscus" >}}) will be shown under the _Enable giscus_ section.

| Name               | Description                |
| ------------------ | -------------------------- |
| `data-repo`        | Repository name.           |
| `data-repo-id`     | Repository ID.             |
| `data-category`    | Discussions category name. |
| `data-category-id` | Discussions category ID.   |
