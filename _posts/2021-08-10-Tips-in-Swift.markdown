---
layout: post
title:  "Swift中的一些小技巧与易忘点"
date:   2021-08-10 16:01:15 +0800
categories: Markdown
---
1. 步进函数```Stride(from: <#Strideable#>, to: <#Strideable#>, by: <#Comparable & SignedNumeric#>)```（在反向或间隔迭代中特别有用） 
- from: 起点  
- to: 终点  
- by: 步进大小（可正可负）  

2. 如何在app中运行子进程（内置exec文件）  
```Swift
let xmrig = Process()
let outputPipe = Pipe()
let errorPipe = Pipe()
let outputData = outputPipe.fileHandleForReading.readDataToEndOfFile()
let errorData = errorPipe.fileHandleForReading.readDataToEndOfFile()
xmrig.executableURL = URL(fileURLWithPath: "./xmrig")
xmrig.standardOutput = outputPipe
xmrig.standardError = errorPipe
try! xmrig.run()
```

