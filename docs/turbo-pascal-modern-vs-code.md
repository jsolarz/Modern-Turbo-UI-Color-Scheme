# Turbo Pascal Modern in VS Code: full workbench coverage without losing the Nord soul

The **Turbo Pascal Modern** theme in this repo is the Nord-leaning, dark-navy cousin of the loud Borland blue. For a long time the VS Code JSON carried only the colors we had explicitly tuned—enough for day-to-day editing, but not the same *surface area* as a fully expanded workbench theme. Recent work brings the Modern theme up to the same **schema shape** as **Borland Turbo Pascal Original** (the same keys, the same section comments in the JSONC file), while keeping **Modern’s palette and intent** everywhere it matters.

This post is a concise design log: what changed, why it reads better, and where VS Code stops letting themes pretend they are CSS.

## One file, two philosophies

The Borland theme is a love letter to Turbo Vision: electric blues, yellow focus rings, and enough `menu.*` and `list.*` entries to make the whole IDE feel like 1992. The Modern theme keeps the **accent language** (gold focus, blue selection, gray chrome) but grounds the editor in **`#252b36`** and friends—closer to Nord than to `#0000AA` wallpaper.

Aligning structure meant: **copy the Borland shell**, **overlay every key** that existed in the older compact Modern theme, then **recolor** remaining keys so they are not accidental Borland paste. The result is one long, commented JSONC file that tools and humans can diff against Borland without guessing missing keys.

## Editor chrome vs. “Turbo blue” fill

A common failure mode after a merge is painting **welcome pages**, **gutters**, and **empty editor panes** with the same accent blue used for active tabs (`#0000AA`). That reads as “everything is a dialog box.” Modern pushes those surfaces back to **`#252b36`** (or the same family) so the **only** large blue fields are where you deliberately want emphasis (tabs, peek, some lists). Line numbers stay **`#4C566A` / `#ECEFF4`**; the **gutter background** matches the editor so the column does not look like a separate strip of paint.

## Panel, terminal, and debug console

The bottom panel is not the editor. Setting **`panel.background`** to **`#343C50`**—the same hex as **`terminal.ansiBrightBlack`** in this theme—gives a **visible step** from **`editor.background`** (`#252b36`) without jumping to flat medium gray. Borders use **`#5E6779`** so separation is luminance, not wishful thinking about border width.

Debug output used to fight mid-gray panels. Console colors are now **wired to the terminal ANSI set** where the API allows: errors toward **`#FF7A73`**, warnings **`#FFE28A`**, info **`#A0F0FF`**, body text **`#ECEFF4`**. Problems view info foreground was corrected to the same bright-cyan family. **`terminal.selectionBackground`** aligns with editor selection (**`#2E4A7F`**) for a single mental model of “selected.”

## Tabs, panel titles, and the shadow you cannot have

VS Code themes **do not** expose arbitrary `box-shadow` on the file tab row or on “Terminal | Problems | Debug Console.” You get **named colors**. We leaned into that:

- **`editorGroupHeader.tabsBorder`** and **`editorGroupHeader.border`**: darker **`#1A1D2A`** so the tab bar reads as a slab above the editor.
- **`tab.border`**: vertical dividers between tabs at **`#1A1D2A`** instead of soft gray mush.
- **`tab.lastPinnedBorder`** and **`tab.dragAndDropBorder`**: clearer pinned and DnD affordances.
- **`panelTitle.border`**: official key for the line **under** the panel tab labels and **above** the view body—this is the closest thing to “border the console tabs.”

For depth that *is* supported, **`widget.shadow`**, **`listFilterWidget.shadow`**, and **`scrollbar.shadow`** use a stronger neutral black with alpha so floating widgets and scroll edges suggest depth without lying about geometry.

## Semantic and TextMate

The Modern **TextMate** block stays Pascal-friendly (keywords, identifiers, strings, directives, asm, punctuation). **Semantic token** colors follow the same palette as the editor and terminal so semantic highlighting does not drift into Borland neon unless you want it.

## Takeaway

Turbo Pascal Modern in VS Code is now **complete at the workbench level** in the same sense as Borland Original, but the **large surfaces** (editor, welcome, gutter, panel) respect the **Modern gray/navy system**, and **terminal colors** inform **debug and problems** where possible. The rest is honesty about what a `.json` theme can and cannot do—which is more than enough for daily use if you pick the right keys.

---

*Part of the [Modern Turbo Pascal UI](https://github.com/jsolarz/Modern-Turbo-UI-Color-Scheme) repository.*
