---
title: Hugo Docker Images
linkTitle: Docker
date: 2023-03-22T21:41:35+08:00
nav_weight: 20
nav_icon:
  vendor: simple-icons
  name: docker
  color: '#2496ed'
featured: true
pinned: true
series:
  - Docker
  - Docs
categories:
  - Docker Images
tags:
  - Docker Hub
  - GitHub Container Registry
  - Deployment
  - Development
authors:
  - HugoMods
---

This article describes the up-to-date Hugo docker images, and offer some examples show how to develop and deploy your sites with the images.

<!--more-->

{{< shields "https://img.shields.io/docker/pulls/razonyang/hugo?style=flat-square" "https://hub.docker.com/r/razonyang/hugo" >}}
{{< shields "https://img.shields.io/docker/v/razonyang/hugo/latest?style=flat-square" "https://hub.docker.com/r/razonyang/hugo" >}}
{{< shields "https://github.com/razonyang/docker-hugo/actions/workflows/docker.yml/badge.svg" "https://github.com/razonyang/docker-hugo/actions/workflows/docker.yml" >}}

## How to Build Latest Images?

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

## Development

We provides a walkthrough about using Hugo Docker images to develop our themes or sites.

<!--more-->

### Pick Up the Right Images

Firstly, compare and pick up the [Docker images](#image-tags). Let's take `razonyang/hugo` image as an example.

```sh
docker pull razonyang/hugo
```

### Change Current Working Directory

Change current working directory to your project root.

```sh
cd my-site
```

{{< bootstrap/alert warning >}}
The rest of steps are performed on your site root.
{{< /bootstrap/alert >}}

### Install Dependencies

You may need to install the dependencies before running Hugo server, such as install dependencies via `npm`.

```sh
docker run \
  -v ${PWD}:/src \
  razonyang/hugo \
  npm i
```

- `-v ${PWD}:/src` mounting current working directory as site source inside Docker container.

### Start Hugo Server

```sh
docker run -p 1313:1313 \
  -v ${PWD}:/src \
  razonyang/hugo \
  hugo server --bind 0.0.0.0
```

- `-p port:port` mapping from host machine port to container port.

> Note that `--bind 0.0.0.0` is required.

Using another port than `1313`, such as `8080`.

```sh
docker run -p 8080:8080 \
  -v ${PWD}:/src \
  razonyang/hugo \
  hugo server --bind 0.0.0.0 -p 8080
```

## Deployment

The following example uses Nginx as web server to serve Hugo generated static files.

### Create Dockerfile

Firstly, create the `Dockerfile` file on your site root.

```dockerfile
###############
# Build Stage #
###############
FROM razonyang/hugo:exts as builder
# Base URL
ARG HUGO_BASEURL=
ENV HUGO_BASEURL=${HUGO_BASEURL}
# Build site
COPY . /src
RUN hugo --minify --gc --enableGitInfo
# Set the fallback 404 page if defaultContentLanguageInSubdir is enabled, please replace the `en` with your default language code.
# RUN cp ./public/en/404.html ./public/404.html

###############
# Final Stage #
###############
FROM razonyang/hugo:nginx
COPY --from=builder /src/public /site
```

### Test Built Image

```sh
docker build \
  -t user/my-site:test \
  --build-arg HUGO_BASEURL=http://localhost:8080 \
  .
```

```sh
docker run -p 8080:80 user/my-site:test
```

- `-t` specifies the image name and tag.
- `--build-arg HUGO_BASEURL=http://localhost:8080` overrides the `baseURL`.

Now the built site can be previewed on http://localhost:8080/.

### Built Image

It's time to build the production image if test passing.

```sh
docker build -t user/my-site .
```

Now you can push your images to container registry, and then deploy it to server, K8s cluster or something else.
