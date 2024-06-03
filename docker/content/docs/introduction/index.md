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

## Default Command

The default command of images is `hugo env`, which prints Hugo version and then exits.
