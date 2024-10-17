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

All images are [Alpine](https://hub.docker.com/_/alpine) based.

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

## Default Command

The default command of images is `hugo env`, which prints Hugo version and then exits.

## Default Shell

Since images are Alpine based, the default shell is `ash` (`/bin/sh`).
