---
title: "Decap CMS"
linkTitle: "Decap CMS"
nav_weight: 1000
# nav_icon:
#   vendor: 
#   name: 
#   color: ''
featured: true
pinned: false
date: 2023-06-23T11:36:42+08:00
draft: false
series:
  - Docs
categories:
tags:
authors:
  - HugoMods
images:
---

This module adds [Decap CMS](https://decapcms.org/) support for Hugo.

<!--more-->

{{< module "github.com/hugomods/decap-cms" >}}

## Installation

First of all, we need to import the module, and then append the `DecapCMSConfig` to the `home` output.

{{< bs/config-toggle hugo >}}
[[module.imports]]
path = "github.com/hugomods/decap-cms"

[outputs]
home = ["HTML", "RSS", "DecapCMSConfig"]
{{< /bs/config-toggle >}}

## Create Decap CMS Entry

It's time to create an entry page for Decap CMS.

{{% bs/collapse "content/admin/_index.md" primary true %}}
```markdown
---
title: Content Manager System
layout: decap-cms
---
```
{{% /bs/collapse %}}

Now you can access it on `/admin`, for example, `http://localhost:1313/admin/`.

## Tweak Configuration

By default, the Decap CMS will complain that there is no `backend` and `collections` settings, we've to tweak those configuration to suit your site.

{{< bs/config-toggle hugo >}}
[params.decap_cms]
publish_mode = "editorial_workflow"
media_folder = "static/images/uploads"
public_folder = "/images/uploads"
search = true
[params.decap_cms.collections.blog]
label = "Blog"
folder = "content/blog"
other = "..."
[params.decap_cms.collections.docs]
label = "Docs"
folder = "content/docs"
other = "..."
{{< /bs/config-toggle >}}

{{< bs/alert warning >}}
{{% markdownify %}}
The difference between this module and Decap CMS docs of `collections` is that the `collections` is an object of array.
With this, theme developers can predefine some collections modules for clients, to set it up as simple as possible.
{{% /markdownify %}}
{{< /bs/alert >}}

See [configuration options](https://decapcms.org/docs/configuration-options/) for all available options.

## Testing Decap CMS Configuration

In order to test the configuration before deploying the site, it's recommended to set up the local backend.

```sh
cd my-site
npx netlify-cms-proxy-server
```

And then tweak your configuration to meet your needs.

{{< bs/config-toggle hugo >}}
params:
  decap_cms:
    local_backend: true
    backend:
      name: git-gateway
    collections:
      blog:
        label: "Blog"
        name: "blog"
        folder: "content/blog"
        create: true
        nested:
          depth: 1000
        fields:
          - {label: "Title", name: "title", widget: "string"}
          - {label: "Publish Date", name: "date", widget: "datetime"}
          - {label: "Body", name: "body", widget: "markdown"}
      docs:
        label: "Docs"
        name: "docs"
        folder: "content/docs"
        create: true
        nested:
          depth: 1000
        fields:
          - {label: "Title", name: "title", widget: "string"}
          - {label: "Publish Date", name: "date", widget: "datetime"}
          - {label: "Body", name: "body", widget: "markdown"}
{{< /bs/config-toggle >}}

{{< bs/alert warning >}}
{{% markdownify %}}
Please disable the `local_backend` for production mode.
{{% /markdownify %}}
{{< /bs/alert >}}
