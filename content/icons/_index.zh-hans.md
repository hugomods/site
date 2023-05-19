---
title: 图标
description: 可生成内联 SVG 图标的 Hugo 模块。
menu:
  main:
    weight: 3
    params:
      icon:
        vendor: font-awesome-solid
        name: icons
---

<div class="px-4 pt-5 my-5 text-center border-bottom">
  <h1 class="display-4 fw-bold mb-4">{{< param title >}}</h1>
  <div class="col-lg-6 mx-auto">
    <p class="lead">{{< param description >}}</p>
    <p class="lead mb-4">无 JS、无 CSS、无字体、按需加载。</p>
    <div class="d-grid gap-2 d-sm-flex justify-content-sm-center mb-5">
      <a role="button" class="btn btn-primary btn-lg px-4 me-sm-3" href="{{< ref path=`docs/icons` lang=en >}}">
        {{< icons/icon vendor=bootstrap name=book className="me-1" >}}
        Read the docs
      </a>
      <a role="button" class="btn btn-outline-success btn-lg px-4" href="#icons-panel">
        {{< icons/icon vendor=bootstrap name=book className="me-1" >}}
        Search icons
      </a>
    </div>
  </div>
</div>

<h2 class="text-center mb-5">Vendors</h2>

<div class="row row-cols-2 row-cols-lg-4 mb-4">
  <div class="col d-flex flex-column align-items-center mb-5">
    <div class="p-4 py-5 bg-body-tertiary mb-3 w-100 text-center">{{< icons/icon vendor=bootstrap name=bootstrap width=3em height=3em >}}</div>
    <div>
      <a href="{{< ref path=`docs/icons#icons-vendors` lang=en >}}">Bootstrap Icons</a>
    </div>
  </div>
  <div class="col d-flex flex-column align-items-center mb-5">
    <div class="p-4 py-5 bg-body-tertiary mb-3 w-100 text-center">{{< icons/icon vendor=feather name=feather width=3em height=3em >}}</div>
    <div>
      <a href="{{< ref path=`docs/icons#icons-vendors` lang=en >}}">Feather Icons</a>
    </div>
  </div>
  <div class="col d-flex flex-column align-items-center mb-5">
    <div class="p-4 py-5 bg-body-tertiary mb-3 w-100 text-center">{{< icons/icon vendor=simple-icons name=fontawesome width=3em height=3em >}}</div>
    <div>
      <a href="{{< ref path=`docs/icons#icons-vendors` lang=en >}}">Font Awesome Icons</a>
    </div>
  </div>
  <div class="col d-flex flex-column align-items-center mb-5">
    <div class="p-4 py-5 bg-body-tertiary mb-3 w-100 text-center">{{< icons/icon vendor=lucide name=feather width=3em height=3em >}}</div>
    <div>
      <a href="{{< ref `docs/icons#icons-vendors` >}}">Lucide Icons</a>
    </div>
  </div>
  <div class="col d-flex flex-column align-items-center mb-5">
    <div class="p-4 py-5 bg-body-tertiary mb-3 w-100 text-center">{{< icons/icon vendor=simple-icons name=materialdesignicons width=3em height=3em >}}</div>
    <div>
      <a href="{{< ref path=`docs/icons#icons-vendors` lang=en >}}">Material Design Icons</a>
    </div>
  </div>
  <div class="col d-flex flex-column align-items-center mb-5">
    <div class="p-4 py-5 bg-body-tertiary mb-3 w-100 text-center">{{< icons/icon vendor=simple-icons name=simpleicons width=3em height=3em >}}</div>
    <div>
      <a href="{{< ref path=`docs/icons#icons-vendors` lang=en >}}">Simple Icons</a>
    </div>
  </div>
  <div class="col d-flex flex-column align-items-center mb-5">
    <div class="p-4 py-5 bg-body-tertiary mb-3 w-100 text-center">{{< icons/icon vendor=tabler name=brand-tabler width=3em height=3em >}}</div>
    <div>
      <a href="{{< ref path=`docs/icons#icons-vendors` lang=en >}}">Tabler Icons</a>
    </div>
  </div>
</div>
