---
title: "Deploy sites with Hugo Docker Images"
linkTitle: "Deployment"
date: 2023-03-22T01:20:38+08:00
draft: false
nav_weight: 3
series:
  - Docker
categories:
  - Deployment
tags:
  - Docker Images
authors:
  - HugoMods
images:
  - images/featured/docker.webp
---

This article offers an example that uses Nginx as web server to serve Hugo generated static files.

<!--more-->

## Create Dockerfile

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

## Test Built Image

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

## Built Image

It's time to build the production image if test passing.

```sh
docker build -t user/my-site .
```

Now you can push your images to container registry, and then deploy it to server, K8s cluster or something else.
