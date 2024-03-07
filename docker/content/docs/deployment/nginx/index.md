---
title: Deploy With Nginx Image
linkTitle: Nginx
description: This section introduces how to build a site image, which uses Nginx as the web server to serve Hugo generated static files.
date: 2024-03-07T12:33:11+08:00
nav_weight: 2
nav_icon:
  vendor: simple
  name: nginx
categories:
  - Docs
tags:
  - Deployment
  - Nginx
---

## Nginx Image

![Size](https://img.shields.io/docker/image-size/hugomods/hugo/nginx?style=flat-square)

We offer a built-in [Nginx](https://github.com/hugomods/docker/blob/main/docker/nginx/Dockerfile) image, `hugomods/hugo:nginx`, which contains a [default configuration](https://github.com/hugomods/docker/blob/main/docker/nginx/conf.d/default.conf). You can totally create your own Nginx image if it doesn't meet your needs, but in this section, we take `hugomods/hugo:nginx` as the example.

## Create Dockerfile

Firstly, create the `Dockerfile` under site root.

{{< page-resource-content "codes/dockerfile" >}}

1. The *build* stage builds site and outputs generated files to public folder (default to `/src/public`).
1. The *final* stage copies the generated files from *build* stage to Nginx site folder (default to `/site` for `hugomods/hugo:nginx`).

## Test Built Image

{{< page-resource-content "codes/test" >}}

1. `-t` specifies the image name and tag.
1. `--build-arg HUGO_BASEURL=http://localhost:8080` overrides the `baseURL`.

Now the built site can be previewed on http://localhost:8080/.

## Build And Deploy Image

Once you're satisfied with the test result, it’s time to build the production image, and then push it to container registry, and then deploy it to server, K8s cluster, etc.

{{< page-resource-content "codes/build" >}}
