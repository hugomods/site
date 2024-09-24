---
title: Troubleshooting
linkTitle: Troubleshooting
description: List of known issues and corresponding solutions to help you to troubleshoot.
date: 2024-03-07T15:44:53+08:00
nav_icon:
  vendor: bs
  name: bug
  className: text-danger
categories:
  - Docs
tags:
  - Troubleshooting
---

## Unable to locate config file or config directory

You'll encounter the error below if you forgot to mount site on [default working directory]({{< relref "docs/introduction#default-working-directory" >}}), or mounted it on wrong directory.

{{< page-resource-content "codes/config-not-found" >}}

## Unknown command or module

The errors similar to below may reached when executing a nonexistent command.

Some users migrated from `klakegg/hugo` may encounter this issue, since `hugomods/hugo` does not add some additional shortcuts for Hugo commands, such as `server` to `hugo server`, that is, there is no such `server` command, to fix it, you just need to replace it with original Hugo command, for example, replace `server` with `hugo server`.

{{< page-resource-content "codes/command-not-found" >}}

{{< page-resource-content "codes/module-not-found" >}}

## Hugo Server Not Running Or Process Exited

Hugo will print stats after building site, if you found out that the process exited without any errors, the process probably was killed by OS.

One common cause is out of memory, to solve the memory issue, you can:

1. Add more memory.
2. For Hugo `0.123.0` or later, disable the `--renderToMemory` flag if it is enabled.
3. For Hugo `0.122.*` or earlier, enable the `--renderToDisk` flag.
