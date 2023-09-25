```go-html-template
<html
  lang="{{ .Lang }}"
  {{ with .Language.LanguageDirection }}dir="{{ . }}"{{ end }}>
  <!-- ... -->
</html>
```