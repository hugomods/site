---
title: 疑難解答
linkTitle: 疑難解答
description: 列出一些已知問題和相應的解決方案，以幫助你排查問題。
date: 2024-03-07T15:44:53+08:00
nav_icon:
  vendor: bs
  name: bug
  className: text-danger
categories:
  - 文檔
tags:
  - 問題排查
---

## 缺少配置文件

當你忘了掛載站點到[默認工作目錄]({{< relref "docs/introduction#默認工作目錄" >}})，又或者掛載到錯誤的目錄，則會遇到一下問題。

{{< page-resource-content "codes/config-not-found" >}}

## 未知的命令或模塊

當執行一個不存在的命令時，可能會出現下面類似的錯誤。

一些從 `klakegg/hugo` 遷移過來的用戶可能遇到這個問題，因為 `hugomods/hugo` 並不會為 Hugo 命令添加額外的快捷方式，比如 `server` 對應 `hugo server`，也就是說，鏡像並不存在這樣的 `server` 命令，你只需要將其替換為原本的命令即可，比如將 `server` 替換為 `hugo server`。

{{< page-resource-content "codes/command-not-found" >}}

{{< page-resource-content "codes/module-not-found" >}}

## Hugo 服務器並未運行或者進程已退出

Hugo 構建站點後，會顯示一些統計信息，當你發現進程退出而沒有任何錯誤，該進程很可能被系統終止了。

其中一個常見的原因是內存不足，為了修復內存問題，你可以選擇：

1. 添加更多內存。
1. 對於 Hugo `0.123.0` 或後續的版本，若啟用了 `--renderToMemory` 參數，則禁用之。
2. 對於 Hugo `0.122.*` 或更早的版本，則使用 `--renderToDisk` 參數。
