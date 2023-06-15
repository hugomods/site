---
title: "Encrypt Module"
linkTitle: "Encrypt"
nav_weight: 1000
nav_icon:
  vendor: fas
  name: shield
  color: 'green'
featured: false
pinned: false
date: 2023-06-15T22:22:29+08:00
series:
  - Docs
categories:
  - Module
tags:
  - Encrypt
authors:
  - HugoMods
images:
---

The encrypt module allows encrypting or protecting partial contents.

<!--more-->

{{< module "github.com/hugomods/encrypt" >}}

## How it Works?

This module ships with a shortcode and a CLI tool, to walk though the Hugo generated files and encrypt the content in AES-256-GCM.

{{< mermaid >}}
graph TD;
  content[Protect content via shortcode `encrypt`]-->build;
  build[Build site, i.e. `hugo --minify --gc ...`]-->encrypt[Encrypt content via `$HOME/go/bin/encrypt`];
{{< /mermaid >}}

The difference between this and normal build is that, you need to combine the CLI tool with Hugo, i.e.

```sh
hugo && $HOME/go/bin/encrypt
```

## Features

- Partial encryption, protect the key part, SEO friendly.
- Remember password to auto decrypt.

## Notes

There are some stuff you should pay attention to.

- Keep your repo (source files) private, since the raw password and content are plaintext.
- Execute the CLI tool after building the site, otherwise the generated files are not encrypted.

## Installation

To get the CLI tool, you can either download from the [releases](https://github.com/hugomods/encrypt/releases) or install from source.

### Install from Source

```sh
go install github.com/hugomods/encrypt/commands/encrypt@latest
```

Then you're able to access the command

```sh
$HOME/go/bin/encrypt
```

## Integrate with Theme

This section is for developers to integrate this module into their themes.

### Import the Module

{{< bs/config-toggle hugo >}}
module:
  imports:
    - path: github.com/hugomods/encrypt
{{< /bs/config-toggle >}}

### Import the CSS

{{% skip-if-hugopress %}}

```go-html-template
{{ partial "encrypt/assets/css" . }}
```

### Import the JS

{{% skip-if-hugopress %}}

```go-html-template
{{ partial "encrypt/assets/js" . }}
```

## Configuration

| Parameter  |  Type  | Required |  Default  | Description                                           |
| ---------- | :----: | :------: | :-------: | ----------------------------------------------------- |
| `password` | string |    Y     |     -     | The default password.                                 |
| `storage`  | string |    Y     | `session` | `session` (SessionStorage) or `local` (LocalStorage). |

{{< bs/config-toggle hugo >}}
params:
  encrypt:
    password: DEFAULT_PASSWORD
    storage: session
{{< /bs/config-toggle >}}

## Usage

This section shows users how to protect their contents, please make sure you've [imported the module](#import-the-module).

> Default password: `{{< param "encrypt.password" >}}`.

{{< bs/alert warning >}}
The shortcode doesn't encrypt anything, it just tell the CLI tool that which content need to be encrypted.
{{< /bs/alert >}}

### Encrypt Raw Content

```markdown
{{</* encrypt */>}}
Hello World!
{{</* /encrypt */>}}
```

{{< encrypt >}}
Hello World!
{{< /encrypt >}}

### Encrypt Markdown Content

```markdown
{{%/* encrypt */%}}
**Hello World!**
{{%/* /encrypt */%}}
```

{{% encrypt %}}
**Hello World!**
{{% /encrypt %}}

### Encrypt Content with Specified Password

```markdown
{{%/* encrypt foo */%}}
**Bar!**
{{%/* /encrypt */%}}
```

{{% encrypt foo %}}
**Bar!**
{{% /encrypt %}}

## Testing

Since the command must be executed after building the site, that is, it won't work with the `hugo server`.

Firstly, build the site and encrypt the content.

```sh
hugo -b http://localhost:8081 && $HOME/go/bin/encrypt
```

And then setup a HTTP server to serve the encrypted contents, such as `http-server` and PHP built-in server.

{{< bs/alert >}}
{{% markdownify %}}
`-b http://localhost:8081` to override the `baseURL` for testing.
{{% /markdownify %}}
{{< /bs/alert >}}

### HTTP Server

To get the `http-server` by executing `npm install --global http-server`.

```sh
http-server -p 8081 public
```

### PHP Built-in Server

If you've PHP installation on your environment.

```sh
php -S 0.0.0.0:8081 -t public
```

## Deployment

- [Cloudflare Pages workflow example](https://github.com/hugomods/site/blob/main/.github/workflows/cloudflare-page.yaml)
- [GitHub Pages workflow example](https://github.com/hugomods/encrypt/blob/main/.github/workflows/gh-pages.yml)

## Credit

It's a fork of [Hugo Encrypt](https://github.com/Izumiko/hugo-encrypt), and port it for Hugo modules.
