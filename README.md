# CLAUDE-style-Typora-theme

本仓库基于 blaxisomu/CLAUDE-Typora 项目 fork 优化，并以本地版本为主线合入上游 V7.0 的视觉与 bugfix 更新。

本地版本保留了额外的 PDF/export 稳定性修复和 macOS 侧边栏避让修复。

> [!CAUTION]
>
> V7.0 涉及一体化窗口和侧边栏收展相关调整。macOS 用户如果依赖当前窗口避让、侧边栏或一体化显示效果，建议更新前先备份现有主题文件。

---
灵感来源：https://claude.ai
制作者：我
100%DIY
还原度：99%
---

# 介绍

这是一款旨在一比一还原 Claude 官网的 Typora 主题，不是简单模仿其风格，而是像素级还原，与 `theme.typora.io` 中的同名主题没有任何关系。本主题不上传到官方主题站。

该主题还原的是 2026 年 4 月之前的 Claude 设计，与新版前端稍许相异，不过风格相差不大。

深度使用过 Claude 的用户会明白 `还原度：99%` 的含金量。

# 使用

1. 下载 releases 的第一个 `zip` 文件，解压。
2. 依次全选安装三个字体文件夹里的所有字体。
3. 将根目录的两个 `CSS` 文件拖入 Typora 主题文件夹中。

# 须知

本主题所使用的字体和 Claude 高度一致，因为其官网使用了三种静态英文字体，正文使用了它们自家设计的衬线体；中文字体这里选择了思源衬线体。

暂时没有适配一体化和第三方插件。

本主题为了美观，隐藏了一些按钮和功能：

- 隐藏了粗体、斜体、行内代码、高光和下划线的符号
- 隐藏了**侧边栏收展**和**切换源码模式**的按钮
- 隐藏了公式块和侧边栏的**水平滚动条**

> [!NOTE]
>
> 水平滚动的快捷键是 `Shift+滚轮`；粗体、斜体、行内代码、高光和下划线的使用：先选中再按快捷键。

<!--侧边栏和源码模式可以通过快捷键来实现-->

## 设置快捷键

1. 打开设置里的高级设置。

2. 找到 `conf.user.json` 并打开。（MAC 系统自己找）

3. 可以参考我的快捷键：
   ```json
     // Custom key binding, which will override the default ones.
     // see https://support.typora.io/Shortcut-Keys/#windows--linux for detail
     "keyBinding": {
       // for example:
       // "Always on Top": "Ctrl+Shift+P"
       // All other options are the menu items 'text label' displayed from each typora menu
       "Inline Math": "Ctrl+M"    // 行内数学公式
       "Comment": "Ctrl+L"        // 注释
       "Toggle SIdebar": "Alt+`"  // 收展侧边栏
       "Select Styled Scope": "Ctrl+D"
       "Select Word": "Ctrl+E"
       "Highlight": "Ctrl+O"      // 高亮（下波浪线）
       "Redo": "Ctrl+Alt+Z"
     },
   ```

# 新增和建议

> 一些 Claude 没有涵盖到的 Markdown 元素，我做了拓展补充，尽量做到贴合主题的设计风格。

新增：

- 粗体的字号变动[^1]
- YAML
- 高亮改为了==下划线==
- <u>下划线</u>
- 对脚注进行了改动[^2]
- 五种 Callout（警告框）
- 公式块在鼠标悬浮时的颜色反馈
- 在暗色模式下，粗体由字号加粗改为颜色变化[^3]
- <!--注释-->

> [!TIP]
>
> 1. 将缩放改为**120%**
> 2. 建议加 QQ 群即时反馈和建议（GitHub 也可以）：**747699182**

# PDF 打印

以预设的 A4 纸尺寸打印会比编辑区的行宽少一个字符，但这不影响阅读排版，只是与编辑区视图的行宽不一致。如果自定义页面大小为 220mm x 297mm，将与编辑区的行宽完全一致，在不进行打印时导出 PDF 会很好。

220mm 可能是完整显示与编辑区一致行宽的最小宽度，再向上加宽已经不影响内容排版，只是增加 PDF 两侧的空白区域。

----

[^1]: 因为之前 Claude 前端字体为静态字体，根本没有中间态字重，所以我使用了字重为 700 的明显粗体。
[^2]: 脚注示例
[^3]: 因为 Claude 暗色模式下的粗体非常不明显，所以改为了 Claude 的 LOGO 色。
