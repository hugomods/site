---
title: "Develop sites with Hugo Docker Images"
linkTitle: "Development"
date: 2023-03-22T01:20:46+08:00
draft: false
nav_weight: 2
series:
  - Docker
categories:
  - Development
tags:
  - Docker Images
authors:
  - HugoMods
images:
  - images/featured/docker.webp
---

This article provides a walkthrough about using Hugo Docker images to develop our themes or sites.

<!--more-->

## Pick Up the Right Images

Firstly, compare and pick up the [Docker images]({{< ref "docs/docker/images" >}}). Let's take `razonyang/hugo` image as an example.

```sh
docker pull razonyang/hugo
```

## Change Current Working Directory

Change current working directory to your project root.

```sh
cd my-site
```

{{< bootstrap/alert warning >}}
The rest of steps are performed on your site root.
{{< /bootstrap/alert >}}

## Install Dependencies

You may need to install the dependencies before running Hugo server, such as install dependencies via `npm`.

```sh
docker run \
  -v ${PWD}:/src \
  razonyang/hugo \
  npm i
```

- `-v ${PWD}:/src` mounting current working directory as site source inside Docker container.

## Start Hugo Server

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