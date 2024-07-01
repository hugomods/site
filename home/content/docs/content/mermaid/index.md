---
title: "Hugo Mermaid Module"
linkTitle: "Mermaid"
nav_weight: 1000
nav_icon:
  vendor: bs
  name: diagram-3
featured: false
pinned: false
date: 2023-03-28T15:36:49+08:00
draft: false
series:
  - Docs
categories:
  - Module
  - Mermaid
tags:
  - Diagrams
  - Flowchart
authors:
  - HugoMods
images:
---

[Mermaid](https://mermaid.js.org/) lets you create diagrams and visualizations using text and code.

<!--more-->

{{< module "github.com/hugomods/mermaid" >}}

> The featured image credited by: https://mermaid.js.org/.

## Installation

### 1. Import Module

```toml
[[module.imports]]
path = "github.com/hugomods/mermaid"
```

### 2. Import the JavaScript

> Skip this step if your theme supports [HugoPress](https://github.com/razonyang/hugopress).

```go
{{ partial "mermaid/assets/js" . }}
```

## Configuration

The site parameters as following.

| Parameter |  Type  |              Default              | Description             |
| --------- | :----: | :-------------------------------: | ----------------------- |
| `js_url`  | String | Latest version from JS Delivr CDN | The Mermaid script URL. |

{{< bootstrap/config-toggle hugo >}}
[params.mermaid]
js_url = "https://cdn.jsdelivr.net/npm/mermaid@latest/dist/mermaid.esm.min.mjs"
{{< /bootstrap/config-toggle >}}

## Usage

### Use Mermaid via Code Block

````markdown
```mermaid
DIAGRAM
```
````

### Use Mermaid via Shortcode

```markdown
{{</* mermaid */>}}
DIAGRAM
{{</* /mermaid */>}}
```

## Examples

### Flowcharts

```mermaid
flowchart TD
  A[Start] --> B{Is it?}
  B -- Yes --> C[OK]
  C --> D[Rethink]
  D --> B
  B -- No ----> E[End]
```

### Entity Relationship Diagrams

{{< mermaid >}}
erDiagram
CUSTOMER }|..|{ DELIVERY-ADDRESS : has
CUSTOMER ||--o{ ORDER : places
CUSTOMER ||--o{ INVOICE : "liable for"
DELIVERY-ADDRESS ||--o{ ORDER : receives
INVOICE ||--|{ ORDER : covers
ORDER ||--|{ ORDER-ITEM : includes
PRODUCT-CATEGORY ||--|{ PRODUCT : contains
PRODUCT ||--o{ ORDER-ITEM : "ordered in"
{{< /mermaid >}}

### Class Diagrams

```mermaid
classDiagram
    class WebDriver {
    }

    class WebElement {
    }

    class LoginPage {
        +WebElement usernameField
        +WebElement passwordField
        +WebElement loginButton
    }

    class LoginTest {
        +WebDriver driver
        +void testLogin()
    }

    WebDriver <|-- LoginTest
    WebElement <|-- LoginPage
    WebDriver <|-- LoginPage
```

```mermaid
classDiagram
    direction LR
    class Serializable {
        <<interface>>
    }
```

```mermaid
classDiagram
    class WashingMachine {
        +MachineState currentState
        +startWashing() : void
        +stopWashing() : void
    }
    class MachineState {
        <<Enumeration>> 
        ON
        OFF
    }
    WashingMachine --> MachineState
```

### State Diagrams

```mermaid
stateDiagram-v2
    [*] --> Still
    Still --> [*]

    Still --> Moving
    Moving --> Still
    Moving --> Crash
    Crash --> [*]
```
