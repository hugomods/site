---
title: "Katex"
date: 2023-03-22T17:38:35+08:00
draft: false
series:
  - Modules
  - Docs
categories:
  - Content
tags:
  - KaTex
  - Math
authors:
  - HugoMods
---

KaTex is the fastest math typesetting library for the web, this module integrates KaTex with Hugo.

<!--more-->

{{% module "github.com/hugomods/katex" %}}

## Using KaTex via Code Block

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

## Using KaTex via Shortcode

````markdown
{{/*< katex >*/}}
FORMULA HERE
{{/*< /katex >*/}}
````

{{< katex >}}
  \begin{array}{l}
  E_{o 1}=\frac{1}{2}\left( { target }_{o 1}- { out }_{o 1}\right)^{2}=\frac{1}{2}(0.01-0.75136507)^{2}=0.274811083 \\
  E_{o 2}=0.023560026 \\
  E_{ {total }}=E_{o 1}+E_{o 2}=0.274811083+0.023560026=0.298371109
  \end{array}
{{< /katex >}}
