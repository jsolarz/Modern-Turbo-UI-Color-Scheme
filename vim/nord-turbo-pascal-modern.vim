" Nord Turbo Pascal Modern Vim Color Scheme
" Based on VS Code theme

set background=dark
hi clear
if exists("syntax_on")
  syntax reset
endif
let g:colors_name = "nord-turbo-pascal-modern"

" Editor colors
hi Normal guifg=#ECEFF4 guibg=#252b36
hi Cursor guifg=#252b36 guibg=#FFD75F
hi CursorLine guibg=#3b4252
hi LineNr guifg=#4C566A
hi CursorLineNr guifg=#ECEFF4
hi Visual guifg=#FFFFFF guibg=#2E4A7F
hi Search guibg=#2E4A7F

" Syntax highlighting
hi Keyword guifg=#ECEFF4 gui=bold
hi Identifier guifg=#FFD75F
hi String guifg=#88C0D0
hi Number guifg=#E5F6FF
hi Comment guifg=#616E88 gui=italic
hi PreProc guifg=#FF5C57
hi Operator guifg=#ECEFF4
hi Delimiter guifg=#ECEFF4
hi Special guifg=#ECEFF4
hi Constant guifg=#E5F6FF
hi Type guifg=#FFD75F
hi Function guifg=#FFD75F

" UI elements
hi StatusLine guifg=#FFFFFF guibg=#808080
hi StatusLineNC guifg=#C0C0C0 guibg=#808080
hi TabLine guifg=#C0C0C0 guibg=#808080
hi TabLineSel guifg=#eceff4 guibg=#0000AA
hi Pmenu guifg=#FFFFFF guibg=#4c566a
hi PmenuSel guifg=#FFFFFF guibg=#0000AA
