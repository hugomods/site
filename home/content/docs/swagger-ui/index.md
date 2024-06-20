---
title: Hugo Swagger UI Module
linkTitle: Swagger UI
description: Hugo Swagger UI Module which ships with a shortcode and standalone preset layout.
date: 2024-06-20T10:48:32+08:00
series:
  - Docs
categories:
  - Modules
tags:
  - Swagger UI
  - OpenAPI
---

{{% module "github.com/hugomods/swagger-ui" %}}

{{% bs/alert %}}
Please use `github.com/hbstack/swagger-ui` instead if you're using [HB Framework](https://hbstack.dev/), which applies extra styles to match dark mode.
{{% /bs/alert %}}

## Installation

### Import Module

```yaml
module:
  imports:
    - path: github.com/hugomods/swagger-ui
```

### Import CSS and JavaScript

{{% skip-if-hugopress %}}

```go-html-template
<head>
  ...
  {{ partialCached "hugomods/swagger-ui/assets/css" . }}
  {{ partialCached "hugomods/swagger-ui/assets/js" . }}
  ...
</head>
```

## Standalone Preset

To use a standalone preset, you'll need to specify the `layout` as `swagger-ui` and the `swagger_ui.url`.

```markdown
---
title: SwaggerUI
description: SwaggerUI
layout: swagger-ui
swagger_ui:
  url: 'https://petstore3.swagger.io/api/v3/openapi.json'
---
```

[Live example]({{< relref "examples/swagger-ui-standalone-preset" >}}).

## Shortcode

You can also embed Swagger UI into your content.

```markdown
{{</* swagger-ui "https://petstore3.swagger.io/api/v3/openapi.json" */>}}
```

{{< swagger-ui "https://petstore3.swagger.io/api/v3/openapi.json" >}}
