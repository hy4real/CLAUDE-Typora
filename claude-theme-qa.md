---
title: Claude Typora Theme QA
author: Theme QA
tags:
  - typora
  - theme
  - qa
---

# Claude Typora Theme QA

[TOC]

## Paragraphs And Inline Styles

This document is a compact visual checklist for the Claude Typora themes. Use it to inspect normal editing, source mode, focus mode, and PDF export.

中文段落用于检查中英混排、衬线字体、行高、标点和链接样式。This sentence includes **bold text**, *italic text*, ==highlighted text==, <u>underlined text</u>, `inline code`, and a [sample link](https://example.com).

Long words and paths should not overflow their containers: `/Users/mac/Library/Application Support/abnerworks.Typora/themes/claude-theme-qa.md`.

## Lists

1. Ordered item with a short sentence.
2. Ordered item with inline code: `npm run theme:check`.
3. Ordered item with nested content.
   - Nested unordered item.
   - Nested unordered item with **strong emphasis**.

- Unordered item.
- Unordered item with a paragraph below.

  This continuation paragraph checks nested spacing.

- [ ] Open this document in Typora.
- [x] Toggle between `claude` and `claude-dark`.
- [ ] Export to PDF and inspect tables, code blocks, links, and page breaks.

## Table

| Area | Expected Result | Risk |
| --- | --- | --- |
| Body text | Comfortable measure and readable line height | Font fallback can change spacing |
| Code block | Language label is visible and stable | Typora DOM changes can affect tooltip placement |
| Sidebar | Floating panel has enough top spacing | macOS title bar offset can vary |
| PDF export | Theme background is uniform across page boundary and body; code and table borders stay readable | Export engines may drop background colors |

## Code Blocks

```js
function summarizeTheme(theme) {
  const result = {
    name: theme.name,
    hasPrintStyles: true,
    accent: "#D97757",
  };

  return `${result.name}: ${result.hasPrintStyles ? "ready" : "needs work"}`;
}
```

```css
:root {
  --accent-color: #D97757;
  --quote-border: #1f1e1d1a;
}

blockquote {
  border-color: var(--quote-border);
}
```

## Quote

> A good writing theme should stay quiet while editing, but still make structure easy to scan.
>
> - Quoted list item
> - Quoted item with `inline code`

## Math

Inline math: $E = mc^2$.

$$
\int_0^1 x^2\,dx = \frac{1}{3}
$$

## Footnotes

Footnote markers should be readable inline and the hover preview should not inherit code-block language label positioning.[^theme]

[^theme]: This footnote exists to test inline footnote chips and hover popups in both light and dark themes.

## Images

![Claude theme banner](claude-banner.png)

## Long Section For Outline

### Outline Level Three

The outline sidebar should show nested headings with stable indentation and no visual overlap.

#### Outline Level Four

This level checks smaller heading weights, outline tree connectors, and TOC nesting.

## Export Notes

When exporting this document, check that the PDF keeps the active theme background uniformly across the page boundary and body. Links should remain legible, tables should keep visible borders, and code blocks should not split awkwardly across pages.
