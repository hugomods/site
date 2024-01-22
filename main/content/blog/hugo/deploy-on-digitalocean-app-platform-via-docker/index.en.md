---
title: "Deploy Hugo static sites on Digitalocean App Platform via Docker"
description: DigitalOcean app platform offers a starter tier, which allows creating up to three static sites for free, in this article, you'll learn how to host Hugo static sites on DigitalOcean by using Docker.
date: 2024-01-22T21:15:23+08:00
featured: false
pinned: false
draft: false
series:
  - Tutorials
categories:
  - Deployment
tags:
  - DigitalOcean
  - Digitalocean App Platform
  - Docker
authors:
  - HugoMods
images:
---

## Requirements

- DigitalOcean Account
- Domain (Optional)

## Create Dockerfile

Create the `Dockerfile` on your site root, let's take [HugoMods Docker image]({{< relref "docs/docker" >}})(`hugomods/hugo:exts`) as an example.

```dockerfile
{{% file-content "dockerfile" %}}
```

In this Dockerfile, it copies the site source file to `/src`, install dependencies (it depends on your site) and build the site.

{{% bs/alert %}}
Please note that the _public/output directory_ should be `/src/public` by default, which will be used in subsequent steps.
{{% /bs/alert %}}

## Create App

1. Navigate to _DigitalOcean Dashboard_.
1. Navigate to the _Apps_ page.
1. Click the _Create App_ button.
1. Fill up the form as follows.

{{% bs/alert %}}
Alternatively, you can click the _Create_ button on the dashboard header, and then select the _Apps_ option.
{{% /bs/alert %}}

![Create App](create-app.jpg#center)

## Tweak Resources

In this step, we'll need to tweak the resources, since currently DigitalOcean app platform Buildpack unable to detect Hugo sites those configured via [configuration directory](https://gohugo.io/getting-started/configuration/#configuration-directory).

![Resources](resources.png#center)

You may see multiple resources as image above shown, you'll need to remove unnecessary resources except the one in type `Dockerfile`.

### Edit Dockerfile Resources

Since the web service isn't non free, so we need to edit the Dockerfile resource to be a static site.

1. Click the `Edit` button on the right of the Dockerfile resource, then you'll be navigated to the resource setting panel.
2. Edit the _Resource Type_ and change it to _Static Site_.
3. Edit the _Output Directory_ and set it as `/src/public`.

![Edit Dockerfile resource](edit-dockerfile-resource.png#center)

Once done, you will get the above similar settings, now let's click the _Back_ button to check the resources.

If everything goes fine, you should got _only one_ resource, which is in type `Static Site | Dockerfile`.

## Review

Please reviewing the billing section, you won't be charged if you deploy not more than 3 static sites.

> Please note that exceeded bandwidth (outbound transfer) usage will be charged, read more on [pricing](https://docs.digitalocean.com/products/app-platform/details/pricing/).

## Deploy

It's time to deploy site by clicking the _Create Resources_ button if everything is OK.

## What's Next?

Once the app was created, it will be deployed automatically, you can then check the build logs if something went wrong. You'll able to customize domain after deploying successfully.
