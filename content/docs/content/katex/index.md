---
title: "Hugo KaTeX Module"
linkTitle: "KaTeX"
date: 2023-03-22T17:38:35+08:00
draft: false
featured: true
nav_icon:
  vendor: bs
  name: pie-chart
series:
  - Modules
  - Docs
categories:
  - Content
tags:
  - KaTeX
  - Math
authors:
  - HugoMods
---

KaTeX is the fastest math typesetting library for the web, this module integrates KaTeX with Hugo.

<!--more-->

{{% module "github.com/hugomods/katex" %}}

## Installation

{{< bootstrap/collapse "1. Import Module" primary true >}}
{{< bootstrap/config-toggle filename=hugo >}}
module:
  imports: 
    - path: github.com/hugomods/katex
{{< /bootstrap/config-toggle >}}
{{< /bootstrap/collapse >}}

{{% bootstrap/collapse "2. Import CSS" %}}
{{% skip-if-hugopress %}}

```go-html-template
{{ partial "katex/assets/css" . }}
```

{{% /bootstrap/collapse %}}

{{% bootstrap/collapse "3. Import JS" %}}
{{% skip-if-hugopress %}}

```go-html-template
{{ partial "katex/assets/js" . }}
```

{{% /bootstrap/collapse %}}

## Usage

### Using KaTeX via Code Block

````markdown
```katex
FORMULA HERE
```
````

```katex
\tag*{(1)} P(E) = {n \choose k} p^k (1-p)^{n-k}
```

```katex
f(x) = \int_{-\infty}^\infty\hat f(\xi)\,e^{2 \pi i \xi x}\,d\xi
```

### Using KaTeX via Shortcode

| Parameter | Position |  Type   | Required | Default | Description                                        |
| --------- | :------: | :-----: | :------: | :-----: | -------------------------------------------------- |
| `formula` |   `#0`   | string  |    -     |    -    | The formula, required when using inline shortcode. |
| `inline`  |   `#1`   | boolean |    -     | `false` | Whether display inline.                            |

Inline shortcode

```markdown
{{</* katex [formula] [inline] /*/>}}
```

Or use closing shortcode

```markdown
{{</* katex */>}}
FORMULA HERE
{{</* /katex */>}}
```

#### KaTeX Shortcode Examples

##### KaTeX Inline Shortcode Example

```markdown
Inline formulas: {{</* katex formula="a^n" inline=true /*/>}}, {{</* katex "a^2+b^2=c^2" true /*/>}}.
```

Inline formulas: {{< katex formula="a^n" inline=true />}}, {{< katex "a^2+b^2=c^2" true />}}.

##### KaTeX Closing Shortcode Example

```markdown
{{</* katex */>}}
\begin{array}{l}
E*{o 1}=\frac{1}{2}\left( { target }*{o 1}- { out }_{o 1}\right)^{2}=\frac{1}{2}(0.01-0.75136507)^{2}=0.274811083 \\
E_{o 2}=0.023560026 \\
E*{ {total }}=E*{o 1}+E\_{o 2}=0.274811083+0.023560026=0.298371109
\end{array}
{{</* /katex */>}}
```

{{< katex >}}
\begin{array}{l}
E*{o 1}=\frac{1}{2}\left( { target }*{o 1}- { out }_{o 1}\right)^{2}=\frac{1}{2}(0.01-0.75136507)^{2}=0.274811083 \\
E_{o 2}=0.023560026 \\
E*{ {total }}=E*{o 1}+E\_{o 2}=0.274811083+0.023560026=0.298371109
\end{array}
{{< /katex >}}
