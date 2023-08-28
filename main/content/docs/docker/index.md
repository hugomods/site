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
menu:
  main:
    parent: docs
    params:
      description: The minial, automated and up-to-date Hugo Docker images.
      icon:
        vendor: simple-icons
        name: docker
        color: '#2496ed'
---

This article describes the up-to-date Hugo docker images, and offer some examples show how to develop and deploy your sites with the images.

<!--more-->

{{< shields "https://img.shields.io/docker/pulls/hugomods/hugo?style=flat-square" "https://hub.docker.com/r/hugomods/hugo" >}}
{{< shields "https://img.shields.io/docker/v/hugomods/hugo/latest?style=flat-square" "https://hub.docker.com/r/hugomods/hugo" >}}
{{< shields "https://github.com/hugomods/docker/actions/workflows/build.yml/badge.svg" "https://github.com/hugomods/docker/actions/workflows/build.yml" >}}

## How to Build Latest Images?

We set up an automated workflow for checking and building latest Hugo images, which can be triggered by:

1. [Cron job](https://github.com/hugomods/docker/actions/workflows/build.yml) which runs every 30 mins.
2. Commenting on [the issue](https://github.com/hugomods/docker/issues/3).

## Images

The images will be pushed to both of [Docker Hub](https://hub.docker.com/r/hugomods/hugo)  and [GitHub Container Registry](https://github.com/hugomods/docker/pkgs/container/hugo).

> We've renamed `razonyang/hugo` to `hugomods/hugo`, the former won't be got updated anymore, please use `hugomods/hugo` instead.

| Container Register | Image Name                                                                        |
| ------------------ | --------------------------------------------------------------------------------- |
| Docker Hub         | [`hugomods/hugo`](https://hub.docker.com/r/hugomods/hugo)                       |
| GitHub             | [`ghcr.io/hugomods/hugo`](https://github.com/hugomods/docker/pkgs/container/hugo) |

## Image Tags

| Tag                  | Size | Hugo | Extended | Go  | Node | NPM | Git |
| -------------------- | :--- | :--: | :------: | :-: | :--: | :-: | :-: |
| `latest`, `<version>` | ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/hugomods/hugo/latest) | ✅ | ✅ | ✅ | ✅ | ✅ | ✅ |
| `base`, `base-<version>` | ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/hugomods/hugo/base) | ✅ | ✅ | ❌ |  ❌ |  ❌ |  ❌ |
| `git`, `git-<version>` | ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/hugomods/hugo/git) | ✅ | ✅ | ❌ |  ❌ |  ❌ |  ✅ |
| `go`, `go-<version>` | ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/hugomods/hugo/go) | ✅ | ✅ | ✅ |  ❌ |  ❌ |  ❌ |
| `go-git`, `go-git-<version>` | ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/hugomods/hugo/go-git) | ✅ | ✅ | ✅ |  ❌ |  ❌ |  ✅ |
| `node`, `node-<version>` | ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/hugomods/hugo/node) | ✅ | ✅ | ❌ | ✅ | ✅ |  ❌ |
| `node-git`, `node-git-<version>` | ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/hugomods/hugo/node-git) | ✅ | ✅ | ❌ | ✅ | ✅ |  ✅ |
| `node-lts`, `node-lts-<version>` | ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/hugomods/hugo/node-lts) | ✅ | ✅ | ❌ | ✅ | ✅ |  ❌ |
| `exts`, `exts-<version>` | ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/hugomods/hugo/exts) | ✅ | ✅ | ✅ | ✅ | ✅ |  ✅ |
| `reg`, `reg-<version>` | ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/hugomods/hugo/reg) | ✅ | ❌ | ✅ | ✅ | ✅ | ✅ |
| `reg-base`, `reg-base-<version>` | ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/hugomods/hugo/reg-base) | ✅ | ❌ | ❌ |  ❌ |  ❌ |  ❌ |
| `reg-git`, `reg-git-<version>` | ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/hugomods/hugo/reg-git) | ✅ | ❌ | ❌ |  ❌ |  ❌ |  ✅ |
| `reg-go`, `reg-go-<version>` | ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/hugomods/hugo/reg-go) | ✅ | ❌ | ✅ |  ❌ |  ❌ |  ❌ |
| `reg-go-git`, `reg-go-git-<version>` | ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/hugomods/hugo/reg-go-git) | ✅ | ❌ | ✅ |  ❌ |  ❌ |  ✅ |
| `reg-node`, `reg-node-<version>` | ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/hugomods/hugo/reg-node) | ✅ | ❌ | ❌ |  ✅ |  ✅ |  ❌ |
| `reg-node-git`, `reg-node-git-<version>` | ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/hugomods/hugo/reg-node-git) | ✅ | ❌ | ❌ |  ✅ |  ✅ |  ✅ |
| `reg-node-lts`, `reg-node-lts-<version>` | ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/hugomods/hugo/reg-node-lts) | ✅ | ❌ | ❌ |  ✅ |  ✅ | ❌ |
| `reg-exts`, `reg-exts-<version>` | ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/hugomods/hugo/reg-exts) | ✅ | ❌ | ✅ |  ✅ |  ✅ |  ✅ |
| `nginx` | ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/hugomods/hugo/nginx) | ❌ | ❌ | ❌ | ❌ | ❌ | ❌ |

- `<version>`: the placeholder for Hugo version, i.e. `0.112.7`.
- `reg`: represents the regular/standard Hugo version.
- `exts`: the `exts` includes not only the tools listed above, but also **Embedded Dart Sass**, **PostCSS CLI**, **Autoprefixer**, **PurgeCSS** and **RTLCSS**.
- `node-lts`: represents the **LTS** (long time support) version of Node.js.

### Image Tags Architectures

All image tags ~~except `exts*`~~ support `linux/amd64` and `linux/arm64`.

{{< bootstrap/alert success >}}
{{% markdownify %}}
Now the `exts*` images support `linux/arm64` arch.
{{% /markdownify %}}
{{< /bootstrap/alert >}}

## Development

We provides a walkthrough about using Hugo Docker images to develop our themes or sites.

<!--more-->

### Pick Up the Right Images

Firstly, compare and pick up the [Docker images](#image-tags). Let's take `hugomods/hugo` image as an example.

```sh
docker pull hugomods/hugo
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
  hugomods/hugo \
  npm i
```

- `-v ${PWD}:/src` mounting current working directory as site source inside Docker container.

### Start Hugo Server

```sh
docker run -p 1313:1313 \
  -v ${PWD}:/src \
  hugomods/hugo \
  hugo server --bind 0.0.0.0
```

- `-p port:port` mapping from host machine port to container port.

> Note that `--bind 0.0.0.0` is required.

Using another port than `1313`, such as `8080`.

```sh
docker run -p 8080:8080 \
  -v ${PWD}:/src \
  hugomods/hugo \
  hugo server --bind 0.0.0.0 -p 8080
```

## Deployment

The following example uses Nginx (`hugomods/hugo:nginx`) as web server to serve Hugo generated static files.

### Create Dockerfile

Firstly, create the `Dockerfile` file on your site root.

```dockerfile
#####################################################################
#                            Build Stage                            #
#####################################################################
FROM hugomods/hugo:exts as builder
# Base URL
ARG HUGO_BASEURL=
ENV HUGO_BASEURL=${HUGO_BASEURL}
# Build site
COPY . /src
RUN hugo --minify --gc --enableGitInfo
# Set the fallback 404 page if defaultContentLanguageInSubdir is enabled, please replace the `en` with your default language code.
# RUN cp ./public/en/404.html ./public/404.html

#####################################################################
#                            Final Stage                            #
#####################################################################
FROM hugomods/hugo:nginx
# Copy the generated files to keep the image as small as possible.
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

### Build and Deploy Image

It's time to build the production image if test passing.

```sh
docker build -t user/my-site .
```

Now you can push your images to container registry, and then deploy it to server, K8s cluster or something else.
