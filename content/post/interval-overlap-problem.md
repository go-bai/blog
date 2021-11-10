---
title: "区间重叠问题"
date: 2021-11-10T11:59:41+08:00
draft: false
tag: ["简单问题"]
---

> 给定一个左闭右开连续区间 [L,R), 判断与另一个左闭右开连续区间是否有重合部分。

首先对于两个连续区间有重合部分的状态有四种，没重合部分的状态有两种，不重合两种状态如下所示。

![][2021-11-10-13-26-33.png]

可以看出，只需要满足有一个区间的右边界小于等于另一个区间的左边界即可。
即满足 `a.R <= b.L || b.R <= a.L` 即可保证两个左闭右开区间不重合。(左闭右闭同理，去掉等于号即可)

[2021-11-10-13-26-33.png]:data:image/png;base64,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