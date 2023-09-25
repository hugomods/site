## Include the CSS

There are multiple approaches to include the CSS.

### Include the CSS via Hugo Pipes

Recommended when you're using Hugo pipes to build CSS from source, it combines your styles and search styles into one bundle file, which is helpful to reduce the HTTP requests.

```go-html-template
{{/* NOTE: we must change the CSS target to separate the style between LTR and RTL sites. */}}
{{/* Otherwise, Hugo may treats it as the same style (cached). */}}
{{/* Ignore it if your themes and sites aren't going to support RTL. */}}
{{ $rtl := eq .Language.LanguageDirection "rtl" }}
{{ $cssTarget := cond $rtl "css/main.rtl.css" "css/main.css" }}
{{ $css := resources.Get "main.scss" | toCSS }}
{{/* If you have a prebuilt CSS, replace the $css with the following. */}}
{{ $css := resources.Get "main.css" }}
{{ $searchCSS := partial "search/assets/css-resource" . }}
{{ $css = slice $searchCSS $css | resources.Concat $cssTarget }}
<link rel="stylesheet" href="{{ $css.RelPermalink }}" />
```

- The `main.scss`/`main.css` is your styles file, which located in the `assets` folder, replace it with yours.
- Note that `slice $searchCSS $css` puts the `$css` after `$searchCSS`, so that `$css` style can override the search's.
- The `search/assets/css-resource` is a partial that returns a search CSS resource.

### Import the CSS via SCSS File

```scss
@import "search/scss/index";
```

This way is more complex than the former, you'll need to take care of the [PostCSS](https://gohugo.io/hugo-pipes/postcss/), Autoprefixer and [RTLCSS](https://rtlcss.com/).
See how [CSS resource partial](https://github.com/hugomods/search/tree/main/layouts/partials/search/assets/css-resource.html) does.

### Include the CSS via Partial

This approach generates a `<link>` tag.

```go-html-template
{{ partial "search/assets/css" . }}
```