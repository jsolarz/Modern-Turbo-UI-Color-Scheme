" Borland Turbo Pascal Original Vim Color Scheme
" Based on original Borland Turbo Pascal IDE

set background=dark
hi clear
if exists("syntax_on")
  syntax reset
endif
let g:colors_name = "borland-turbo-pascal-original"

" Editor colors
hi Normal guifg=#AAAAAA guibg=#0000AA
hi Cursor guifg=#0000AA guibg=#FFFFFF
hi CursorLine guibg=#0000CC
hi LineNr guifg=#8888AA
hi CursorLineNr guifg=#FFFFFF
hi Visual guifg=#FFFFFF guibg=#5555AA
hi Search guibg=#5555AA

" Syntax highlighting
hi Keyword guifg=#FFFFFF gui=bold
hi Identifier guifg=#AAAAAA
hi String guifg=#00FFFF
hi Number guifg=#FF00FF
hi Comment guifg=#00FF00
hi PreProc guifg=#FF0000
hi Operator guifg=#FFFF00
hi Delimiter guifg=#AAAAAA
hi Special guifg=#AAAAAA
hi Constant guifg=#FF00FF
hi Type guifg=#FFFF00
hi Function guifg=#FFFF00

" UI elements
hi StatusLine guifg=#FFFFFF guibg=#808080
hi StatusLineNC guifg=#C0C0C0 guibg=#808080
hi TabLine guifg=#C0C0C0 guibg=#808080
hi TabLineSel guifg=#FFFFFF guibg=#0000AA
hi Pmenu guifg=#FFFFFF guibg=#808080
hi PmenuSel guifg=#FFFFFF guibg=#0000AA
