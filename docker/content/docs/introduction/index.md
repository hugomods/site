---
title: Introduction
linkTitle: Introduction
description: Introduce the details of Hugo Docker images.
date: 2024-03-06T21:51:21+08:00
nav_weight: 1
nav_icon:
  vendor: bs
  name: book
  className: text-primary
categories:
  - Docs
tags:
  - Working Directory
  - Command
---

## Base Image

All images are [Alpine](https://hub.docker.com/_/alpine) and [Debian](https://hub.docker.com/_/debian) based (with leading `debian`).

## Minimal Image Tags

The minimal image tags (includes Hugo only) are begin with `base` (extended edition) or `std-base` (standard edition).

> [!NOTE]
> The default tag (`latest`, `<version>`) is not the smallest, which is due to historical reasons. Additionally, considering backward compatibility, the default tag will remain unchanged.

## Default Working Directory

The default working directory is `/src`.

## User

### Default User

| Images                 | Default user |
| ---------------------- | :----------: |
| **Without** `non-root` | `root`       |
| **With** `non-root`    | `hugo`       |

### The `hugo` User

Regardless of whether the default user for the image is root or not, all images have a user named `hugo`, whose owns the `/src`.

| Name   |  UID   | Group Name |  GID   |
| :----: | :----: | :--------: | :----: |
| `hugo` | `1000` |   `hugo`   | `1000` |

## Commands

### Default Command

The default command is `hugo help` (previously `hugo env`) since images tagged with `0.136.2`, which prints help and then exits.

### Command Aliases

If the `entrypoint` command is not a system command inside a container, then it will be treated as a Hugo subcommand.

| Example   | Command        |
| --------- | -------------- |
| `docker run ... server`  | `docker run ... hugo server`  |
| `docker run ... version` | `docker run ... hugo version` |

### Server Binding Interface

The `hugo server`/`server` will bind the `0.0.0.0` by default, unless the `--bind` flag is set.

## Default Shell

Since images are Alpine based, the default shell is `ash` (`/bin/sh`).
