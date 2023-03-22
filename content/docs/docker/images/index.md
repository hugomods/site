---
title: "Hugo Docker Images"
linkTitle: "Images"
date: 2023-03-21T22:17:58+08:00
draft: false
nav_weight: 1
series:
  - Docker
  - Docs
categories:
  - Docker Images
tags:
  - Docker Hub
  - GitHub Container Registry
authors:
  - HugoMods
images:
  - images/featured/docker.webp
---

{{< shields "https://img.shields.io/docker/pulls/razonyang/hugo?style=flat-square" "https://hub.docker.com/r/razonyang/hugo" >}}
{{< shields "https://img.shields.io/docker/v/razonyang/hugo/latest?style=flat-square" "https://hub.docker.com/r/razonyang/hugo" >}}
{{< shields "https://github.com/razonyang/docker-hugo/actions/workflows/docker.yml/badge.svg" "https://github.com/razonyang/docker-hugo/actions/workflows/docker.yml" >}}

The up-to-date Hugo docker images.

<!--more-->

We set up an automated workflow for checking and building latest Hugo images, which can be triggered by:

1. [Cron job](https://github.com/razonyang/docker-hugo/actions/workflows/docker.yml) which runs every 30 min.
2. Commenting on [the issue](https://github.com/razonyang/docker-hugo/issues/3).

## Images

The images will be pushed to both of [Docker Hub](https://hub.docker.com/r/razonyang/hugo)  and [GitHub Container Register](https://github.com/hugomods/docker/pkgs/container/hugo).

| Container Register | Image Name                                                                        |
| ------------------ | --------------------------------------------------------------------------------- |
| Docker Hub         | [`razonyang/hugo`](https://hub.docker.com/r/razonyang/hugo)                       |
| GitHub             | [`ghcr.io/hugomods/hugo`](https://github.com/hugomods/docker/pkgs/container/hugo) |

## Image Tags

| Tag                  | Size | Extended | Go  | Node | NPM | Git |
| -------------------- | :--- | :------: | :-: | :--: | :-: | :-: |
| `latest`, `<version>` | ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/razonyang/hugo/latest) | ✅ | ✅ | ✅ | ✅ | ✅ |
| `base`, `base-<version>` | ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/razonyang/hugo/base) | ✅ | ❌ |  ❌ |  ❌ |  ❌ |
| `go`, `go-<version>` | ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/razonyang/hugo/go) | ✅ | ✅ |  ❌ |  ❌ |  ❌ |
| `node`, `node-<version>` | ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/razonyang/hugo/node) | ✅ | ❌ | ✅ | ✅ |  ❌ |
| `exts`, `exts-<version>` | ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/razonyang/hugo/exts) | ✅ | ✅ | ✅ | ✅ |  ✅ |
| `reg`, `reg-<version>` | ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/razonyang/hugo/latest) | ❌ | ✅ | ✅ | ✅ | ✅ |
| `reg-base`, `reg-base-<version>` | ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/razonyang/hugo/reg-base) | ❌ | ❌ |  ❌ |  ❌ |  ❌ |
| `reg-go`, `reg-go-<version>` | ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/razonyang/hugo/reg-go) | ❌ | ✅ |  ❌ |  ❌ |  ❌ |
| `reg-node`, `reg-node-<version>` | ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/razonyang/hugo/reg-node) | ❌ | ❌ |  ✅ |  ✅ |  ❌ |
| `reg-exts`, `reg-exts-<version>` | ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/razonyang/hugo/reg-exts) | ❌ | ✅ |  ✅ |  ✅ |  ✅ |

- `<version>`: the placeholder for Hugo version, i.e. `0.111.3`.
- `reg`: represents the regular Hugo version.
- `exts`: the `exts` includes not only the tools listed above, but also **Dart Sass Embedded**, **PostCSS CLI**, **Autoprefixer**, **PurgeCSS** and **RTLCSS**.
