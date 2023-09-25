## Include the JavaScript

We can achieve this via two ways.

### Include the JavaScript via Hugo Pipes

Recommended when you're using Hugo pipes to build JS from source, it combines your JS and search JS into one bundle file, which is helpful to reduce the HTTP requests.

```go-html-template
{{ $js := resources.Get "main.ts" | js.Build }}
{{/* If you have a prebuilt JS file, use the following instead. */}}
{{ $js := resources.Get "main.js" }}
{{ $searchJS := partial "search/assets/js-resource" . }}
{{ $js = slice $js $searchJS | resources.Concat "js/main.js" }}
<script src="{{ $js.RelPermalink }}" defer></script>
```

> Please note that you should not set the `async` attribute on the `script`.

- The `main.ts`/`main.js` is your JavaScript file, which located in the `assets` folder, replace it with yours.
- The `search/assets/js-resource` is a partial that returns a search JS resource.

### Include the JavaScript via Partial

This partial will generate a `<script>` tag.

```go-html-template
{{ partial "search/assets/js" . }}
```