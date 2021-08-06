---
layout: post
title: "Markdown学习笔记"
date: 2021-08-05 22:09:30 +0800
categories: Markdown
---
1～6级标题预览：  
# hello
## hello
### hello
#### hello
##### hello
###### hello

换行方法
1. 在行尾敲两个空格
2. 直接空一行
*斜体文本*
_斜体文本_

**粗体文本**
__粗体文本__

***粗斜体文本***
___粗斜体文本___

分隔线  
***（不被jekyll支持）
* * *
*****
- - -
----------

删除线  
~~BAIDU.COM~~

下划线  
<u>带下划线文本</u>

脚注  
[^要注明的文本]（不被jekyll支持）
[^RUNOOB]: 菜鸟教程 -- 学的不仅是技术，更是梦想！！！

无序列表使用星号(*)、加号(+)或是减号(-)作为列表标记，这些标记后面要添加一个空格，然后再填写内容：

列表嵌套  
1. 第一项：
    - 第一项嵌套的第一个元素
    - 第一项嵌套的第二个元素
2. 第二项：
    - 第二项嵌套的第一个元素
    - 第二项嵌套的第二个元素
    
Markdown 区块引用是在段落开头使用 > 符号 ，然后后面紧跟一个空格符号：
> 区块引用  
> 菜鸟教程  
> 学的不仅是技术更是梦想

另外区块是可以嵌套的，一个 > 符号是最外层，两个 > 符号是第一层嵌套，以此类推：  
> 最外层
> > 第一层嵌套
> > > 第二层嵌套

区块中使用列表  
区块中使用列表实例如下：
> 区块中使用列表
> 1. 第一项
> 2. 第二项
> + 第一项
> + 第二项
> + 第三项

列表中使用区块  
如果要在列表项目内放进区块，那么就需要在 > 前添加四个空格的缩进。
列表中使用区块实例如下：
* 第一项
    > 菜鸟教程
    > 学的不仅是技术更是梦想
* 第二项

Markdown 代码  
如果是段落上的一个函数或片段的代码可以用反引号把它包起来，例如：
`printf()` 函数

代码区块  
代码区块使用 4 个空格或者一个制表符（Tab 键）。  
    <?php
    echo 'RUNOOB'
    function test() {
        echo test
    }
（不被jekyll支持）

你也可以用 ``` 包裹一段代码，并指定一种语言（也可以不指定）：
```javascript
$(document).ready(function () {
    alert('RUNOOB');
});
```
Markdown 链接  
链接使用方法如下：  
[百度（链接名称）](https://www.baidu.com)
或者
<https://www.baidu.com>

高级链接  
我们可以通过变量来设置一个链接，变量赋值在文档末尾进行：  
这个链接用 1 作为网址变量 [Google][1]  
这个链接用 runoob 作为网址变量 [Runoob][runoob]  
然后在文档的结尾为变量赋值（网址）

  [1]: http://www.google.com/
  [runoob]: http://www.runoob.com/

Markdown 图片  
Markdown 图片语法格式如下：  
![alt 属性文本](图片地址)

![alt 属性文本](图片地址 "可选标题")
开头一个感叹号 !  
接着一个方括号，里面放上图片的替代文字  
接着一个普通括号，里面放上图片的网址，最后还可以用引号包住并加上选择性的 'title' 属性的文字。  
使用实例：  
![RUNOOB 图标](http://static.runoob.com/images/runoob-logo.png)

![RUNOOB 图标](http://static.runoob.com/images/runoob-logo.png "RUNOOB")

当然，你也可以像网址那样对图片网址使用变量:  
这个链接用 1 作为网址变量 ![RUNOOB][1].  
然后在文档的结尾为变量赋值（网址）  

[1]: http://static.runoob.com/images/runoob-logo.png
Markdown 还没有办法指定图片的高度与宽度，如果你需要的话，你可以使用普通的 <img> 标签。
<img src="http://static.runoob.com/images/runoob-logo.png" width="50%">

Markdown 表格
Markdown 制作表格使用 | 来分隔不同的单元格，使用 - 来分隔表头和其他行。
语法格式如下：  
|  表头   | 表头  |
|  ----  | ----  |
| 单元格  | 单元格 |
| 单元格  | 单元格 |  
（不被jekyll支持）

对齐方式  
我们可以设置表格的对齐方式：  
-: 设置内容和标题栏居右对齐。  
:- 设置内容和标题栏居左对齐。  
:-: 设置内容和标题栏居中对齐。  
实例如下：  
| 左对齐 | 右对齐 | 居中对齐 |
| :-----| ----: | :----: |
| 单元格 | 单元格 | 单元格 |
| 单元格 | 单元格 | 单元格 |

Markdown 高级技巧  
支持的 HTML 元素  
不在 Markdown 涵盖范围之内的标签，都可以直接在文档里面用 HTML 撰写。  
目前支持的 HTML 元素有：<kbd> <b> <i> <em> <sup> <sub> <br>等 ，如：  
使用 <kbd>Ctrl</kbd>+<kbd>Alt</kbd>+<kbd>Del</kbd> 重启电脑

转义  
Markdown 使用了很多特殊符号来表示特定的意义，如果需要显示特定的符号则需要使用转义字符，Markdown 使用反斜杠转义特殊字符：
**文本加粗** 
\*\* 正常显示星号 \*\*

Markdown 支持以下这些符号前面加上反斜杠来帮助插入普通的符号：
```
\   反斜线
`   反引号
*   星号
_   下划线
{}  花括号
[]  方括号
()  小括号
#   井字号
+   加号
-   减号
.   英文句点
!   感叹号
```

公式  
当你需要在编辑器中插入数学公式时，可以使用两个美元符 $$ 包裹 TeX 或 LaTeX 格式的数学公式来实现。提交后，问答和文章页会根据需要加载 Mathjax 对数学公式进行渲染。如：
$$
\mathbf{V}_1 \times \mathbf{V}_2 =  \begin{vmatrix} 
\mathbf{i} & \mathbf{j} & \mathbf{k} \\
\frac{\partial X}{\partial u} &  \frac{\partial Y}{\partial u} & 0 \\
\frac{\partial X}{\partial v} &  \frac{\partial Y}{\partial v} & 0 \\
\end{vmatrix}
${$tep1}{\style{visibility:hidden}{(x+1)(x+1)}}
$$
