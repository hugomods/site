---
date: 2024-03-05T22:32:43+08:00
title: Customize Vendors
description: The built-in icons vendors may not meet your needs, don't worry, you can absolutely create your own icons vendors.
nav_weight: 6
nav_icon:
  vendor: bs
  name: plus-circle
  className: text-success
categories:
  - Docs
tags:
  - Vendors
---

## Principle

Icons are saved in `/assets/icons/{vendor}/{name}` form, where the `{vendor}`, `{name}` represent the vendor name and icon name respectively.

## Site Scoped SVG Icons

The simplest way to add and use custom icons is to save the icons to the corresponding folder. Let's take `/asset/icons/custom/example.svg` as an example, the vendor name will be `custom`, and the icon name is `example`, then you're able to use it via templates and shortcodes.

## Shared SVG Icons

If you want to reuse the icons across multiple sites, you'll need to create a module.

### Create And Clone Repository

Firstly, create an repository and clone it to local, take `github.com/user/hugo-icons` as an example.

{{< bs/alert danger >}}
Please do not forgot to modify the repository URL and module path!
{{< /bs/alert >}}

```sh
git clone https://github.com/user/hugo-icons
cd hugo-icons
```

### Initialize Module

The module path is typically the repository URL that without protocol.

```sh
hugo mod init github.com/user/hugo-icons
```

### Add Icons

Then save your icons to `/assets/icons` folder with a proper vendor name.

### Commit Changes And Push to Remote

```sh
git add -A
git commit -m 'add icons'
git push origin main
```

### Import Newer Icons Vendor Into Sites

Now you should able to import the custom icons vendor into your site.
