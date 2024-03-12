---
title: 疑难解答
linkTitle: 疑难解答
description: 列出一些已知问题和相应的解决方案，以帮助你排查问题。
date: 2024-03-07T15:44:53+08:00
nav_icon:
  vendor: bs
  name: bug
  className: text-danger
categories:
  - 文档
tags:
  - 问题排查
---

## 缺少配置文件

当你忘了挂载站点到[默认工作目录]({{< relref "docs/introduction#默认工作目录" >}})，又或者挂载到错误的目录，则会遇到一下问题。

{{< page-resource-content "codes/config-not-found" >}}

## 未知的命令或模块

当执行一个不存在的命令时，可能会出现下面类似的错误。

一些从 `klakegg/hugo` 迁移过来的用户可能遇到这个问题，因为 `hugomods/hugo` 并不会为 Hugo 命令添加额外的快捷方式，比如 `server` 对应 `hugo server`，也就是说，镜像并不存在这样的 `server` 命令，你只需要将其替换为原本的命令即可，比如将 `server` 替换为 `hugo server`。

{{< page-resource-content "codes/command-not-found" >}}

{{< page-resource-content "codes/module-not-found" >}}

## Hugo 服务器并未运行或者进程已退出

Hugo 构建站点后，会显示一些统计信息，当你发现进程退出而没有任何错误，该进程很可能被系统终止了。

其中一个常见的原因是内存不足，为了修复内存问题，你可以选择：

1. 添加更多内存。
1. 对于 Hugo `0.123.0` 或后续的版本，若启用了 `--renderToMemory` 参数，则禁用之。
2. 对于 Hugo `0.122.*` 或更早的版本，则使用 `--renderToDisk` 参数。
