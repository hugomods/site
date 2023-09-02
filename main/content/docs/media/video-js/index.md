---
title: "Hugo Video.js Module"
linkTitle: "Video.js"
description: Add Video.js support for Hugo.
nav_weight: 1000
# nav_icon:
#   vendor: 
#   name: 
#   color: ''
featured: false
pinned: false
date: 2023-09-02T13:13:15+08:00
draft: false
series:
  - Docs
categories:
  - Modules
tags:
  - Video
  - Video.js
authors:
  - HugoMods
images:
---

{{< module "github.com/hugomods/video-js" >}}

## Installation

### Import the Module

{{% bs/config-toggle hugo %}}
module:
  imports:
    - path: github.com/hugomods/video-js
{{% /bs/config-toggle %}}

### Include the CSS

{{% skip-if-hugopress %}}

```go-html-template
{{ partial "video-js/assets/css" . }}
```

### Include the JavaScript

{{% skip-if-hugopress %}}

```go-html-template
{{ partial "video-js/assets/js" . }}
```

## Site Parameters

| Name | Type | Default | Description |
| ---- | :--: | :-----: | ----------- |
| `css_url` | string | `https://unpkg.com/video.js/dist/video-js.min.css` | The CSS URL. |
| `js_url` | string | `https://unpkg.com/video.js/dist/video.min.js` | The JavaScript URL. |

{{% bs/config-toggle hugo %}}
[params.video_js]
css_url = "https://unpkg.com/video.js/dist/video-js.min.css"
js_url = "https://unpkg.com/video.js/dist/video.min.js"
{{% /bs/config-toggle %}}

Leave it as is to keep using the latest version, you can also replace it with yours self-hosted assets or other CDNs.

## Page Parameters

| Name | Type | Default | Description |
| ---- | :--: | :-----: | ----------- |
| `video_js` | boolean | `false` | Indicate the current page is using Video.js to load the CSS and JS. |

You don't have to specify the `video_js` when using [shortcode](#shortcode), since this module is able to recognize the pages that using Video.js.

## Shortcode

### Shortcode Syntax

```markdown
{{</* video-js */>}}
```

### Shortcode Parameters

{{% shortcode-params "data/params.yaml" %}}

## Shortcode Examples

{{< bs/alert info >}}
{{< markdownify >}}
The below example videos are belong to the [BLACK MYTH WUKONG](https://www.heishenhua.com/).
{{< /markdownify >}}
{{< /bs/alert >}}

### Default Video.js Example

```markdown
{{</* video-js "https://heishenhua.com/video/preview/video_PV03_Music.mp4" */>}}
```

{{< video-js "https://heishenhua.com/video/preview/video_PV03_Music.mp4" >}}

### Video.js Example Without Controls

```markdown
{{</* video-js "https://heishenhua.com/video/preview/video_Day2.mp4" */>}}
```

{{< video-js "https://heishenhua.com/video/preview/video_Day2.mp4" >}}

### Video.js Example With Muted, Loop, Preload and Autoplay Enable

```markdown
{{</* video-js
  src="https://www.heishenhua.com/video/preview/video_Day1.mp4"
  muted=true
  loop=true
  autoplay=true
*/>}}
```

{{< video-js
  src="https://www.heishenhua.com/video/preview/video_Day1.mp4"
  muted=true
  loop=true
  autoplay=true
>}}

### Video.js HLS Example

```markdown
{{</* video-js
  src="https://devstreaming-cdn.apple.com/videos/streaming/examples/adv_dv_atmos/main.m3u8"
  type="application/x-mpegURL"
*/>}}
```

{{< video-js
  src="https://devstreaming-cdn.apple.com/videos/streaming/examples/adv_dv_atmos/main.m3u8"
  type="application/x-mpegURL"
>}}

### Video.js MPEG DASH Example

```markdown
{{</* video-js
  src="https://customer-m033z5x00ks6nunl.cloudflarestream.com/b236bde30eb07b9d01318940e5fc3eda/manifest/video.mpd"
  type="application/dash+xml"
*/>}}
```

{{< video-js
  src="https://customer-m033z5x00ks6nunl.cloudflarestream.com/b236bde30eb07b9d01318940e5fc3eda/manifest/video.mpd"
  type="application/dash+xml"
>}}
