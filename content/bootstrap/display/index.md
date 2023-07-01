---
type: docs
title: "Bootstrap Display Shortcode"
linkTitle: "Display"
nav_weight: 1000
nav_icon:
  vendor: bs
  name: paragraph
  className: text-primary
featured: false
pinned: false
date: 2023-04-10T08:49:25+08:00
draft: false
series:
  - Docs
categories:
  - Shortcode
tags:
  - Display
authors:
  - HugoMods
images:
---

Traditional heading elements are designed to work best in the meat of your page content. When you need a heading to stand out, consider using a display heading—a larger, slightly more opinionated heading style.

<!--more-->

## Usage

```markdown
{{%/* bs/display */%}}
HEADING
{{%/* /bs/display */%}}
```

## Parameters

{{% shortcode-params "data/params.en.toml" %}}

## Examples

{{% bs/display %}}
Display 1
{{% /bs/display %}}

```markdown
{{%/* bs/display */%}}
Display 1
{{%/* /bs/display */%}}
```

{{% bs/display 2 %}}
Display 2
{{% /bs/display %}}

```markdown
{{%/* bs/display 2 */%}}
Display 2
{{%/* /bs/display */%}}
```

{{% bs/display 3 %}}
Display 3
{{% /bs/display %}}

```markdown
{{%/* bs/display 3 */%}}
Display 3
{{%/* /bs/display */%}}
```

{{% bs/display 4 %}}
Display 4
{{% /bs/display %}}

```markdown
{{%/* bs/display 4 */%}}
Display 4
{{%/* /bs/display */%}}
```

{{% bs/display 5 %}}
Display 5
{{% /bs/display %}}

```markdown
{{%/* bs/display 5 */%}}
Display 5
{{%/* /bs/display */%}}
```

{{% bs/display 6 %}}
Display 6
{{% /bs/display %}}

```markdown
{{%/* bs/display 6 */%}}
Display 6
{{%/* /bs/display */%}}
```

{{% bs/display 6 "text-primary" %}}
Display 6 with extra classes.
{{% /bs/display %}}

```markdown
{{%/* bs/display 1 "text-primary" */%}}
Display with extra classes.
{{%/* /bs/display */%}}
```

{{% bs/display level=6 class="text-success" %}}
Display 6 with extra classes via named parameters.
{{% /bs/display %}}

```markdown
{{%/* bs/display level=6 class="text-success" */%}}
Display 6 with extra classes via named parameters.
{{%/* /bs/display */%}}
```
