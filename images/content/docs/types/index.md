---
title: "Image Types"
linkTitle: "Image Types"
description: List of supported image types.
nav_weight: 3
nav_icon:
  vendor: bs
  name: images
  className: text-info
date: 2023-03-24T06:27:36+08:00
categories:
  - Docs
tags:
  - Types
authors:
  - HugoMods
---

## Site Image Resources

The images located in the `assets` directory.
{ .lead }

To use the site image resources, you'll need to put a _leading slash_ (`/`) into the URL's `path`.

{{< page-resource-content "data/site-resources-examples" >}}

## Page Image Resources

The images located in the [page's directory](https://gohugo.io/content-management/page-resources/).
{ .lead }

You'll need to organize pages as [page bundles](https://gohugo.io/content-management/page-bundles/), for example.

{{< page-resource-content "data/page-bundle-structure" >}}

The content structure above includes one page (`blog/hello`) that contains two image resources: `foo.png` and `bar.png`.

Then you can render the images in the page content file (`blog/hello/index.md`).

{{< page-resource-content "data/page-resources-examples" >}}

## Public Images

The images located in the `static` folder.
{ .lead }

{{< page-resource-content "data/public-images-examples" >}}

## External Images

{{< page-resource-content "data/external-images-examples" >}}

## Limitations

Most of the processing methods work only on _site image resources_ and _page image resources_, except of alignment and resizing.
Moreover, the resizing is implemented by inline styles for _public images_ and _external images_.

### Mounting Public Images

The good news is that Hugo allows [mounting](https://gohugo.io/getting-started/directory-structure/#union-file-system) the `static/*` folder, to make them to be site resources, then you can process those images via any methods.

{{< page-resource-content "data/mounts" >}}

The configuration example above mounts the `static/uploads` on `assets/uploads`, then you're able to use the images as we did for the site images resources.

```markdown
![Sample](/uploads/images/sample.jpg?width=300px)
```
