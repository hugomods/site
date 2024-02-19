---
title: Hugo Icons Module
layout: icons
description: The Hugo icons module that generates inline SVG icons.
menu:
  main:
    name: Icons
    weight: 10
    params:
      icon:
        name: icons
        vendor: fas
---

<div class="px-4 pt-5 my-5 text-center border-bottom">
  <h1 class="display-4 fw-bold mb-4">{{< param title >}}</h1>
  <div class="col-lg-6 mx-auto">
    <p class="lead">{{< param description >}}</p>
    <p class="lead mb-4">No JS, no CSS, no fonts, load on demand.</p>
    <div class="d-grid gap-2 d-sm-flex justify-content-sm-center mb-5">
      <a role="button" class="btn btn-primary btn-lg px-4 py-3 me-sm-3" href="https://hugo.g0f.cn/en/docs/icons">
        {{< icons/icon vendor=bootstrap name=book className="me-1" >}}
        Read the docs
      </a>
      <a role="button" class="btn btn-outline-success btn-lg py-3 px-4" href="#icons-panel">
        {{< icons/icon vendor=bootstrap name=search className="me-1" >}}
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
      <a href="https://hugo.g0f.cn/en/docs/icons#icons-vendors">Bootstrap Icons</a>
    </div>
  </div>
  <div class="col d-flex flex-column align-items-center mb-5">
    <div class="p-4 py-5 bg-body-tertiary mb-3 w-100 text-center">{{< icons/icon vendor=feather name=feather width=3em height=3em >}}</div>
    <div>
      <a href="https://hugo.g0f.cn/en/docs/icons#icons-vendors">Feather Icons</a>
    </div>
  </div>
  <div class="col d-flex flex-column align-items-center mb-5">
    <div class="p-4 py-5 bg-body-tertiary mb-3 w-100 text-center">{{< icons/icon vendor=simple-icons name=fontawesome width=3em height=3em >}}</div>
    <div>
      <a href="https://hugo.g0f.cn/en/docs/icons#icons-vendors">Font Awesome Icons</a>
    </div>
  </div>
  <div class="col d-flex flex-column align-items-center mb-5">
    <div class="p-4 py-5 bg-body-tertiary mb-3 w-100 text-center">{{< icons/icon vendor=lucide name=feather width=3em height=3em >}}</div>
    <div>
      <a href="https://hugo.g0f.cn/en/docs/icons#icons-vendors">Lucide Icons</a>
    </div>
  </div>
  <div class="col d-flex flex-column align-items-center mb-5">
    <div class="p-4 py-5 bg-body-tertiary mb-3 w-100 text-center">{{< icons/icon vendor=simple-icons name=materialdesignicons width=3em height=3em >}}</div>
    <div>
      <a href="https://hugo.g0f.cn/en/docs/icons#icons-vendors">Material Design Icons</a>
    </div>
  </div>
  <div class="col d-flex flex-column align-items-center mb-5">
    <div class="p-4 py-5 bg-body-tertiary mb-3 w-100 text-center">{{< icons/icon vendor=simple-icons name=simpleicons width=3em height=3em >}}</div>
    <div>
      <a href="https://hugo.g0f.cn/en/docs/icons#icons-vendors">Simple Icons</a>
    </div>
  </div>
  <div class="col d-flex flex-column align-items-center mb-5">
    <div class="p-4 py-5 bg-body-tertiary mb-3 w-100 text-center">{{< icons/icon vendor=tabler name=brand-tabler width=3em height=3em >}}</div>
    <div>
      <a href="https://hugo.g0f.cn/en/docs/icons#icons-vendors">Tabler Icons</a>
    </div>
  </div>
</div>
