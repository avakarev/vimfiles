runtime colors/jellybeans.vim
let g:colors_name = "jellybeans+"

highlight  VertSplit    guibg=#888888
highlight  StatusLine   guibg=#cccccc guifg=#000000
highlight  StatusLineNC guibg=#888888 guifg=#000000

" most important
highlight User1 ctermfg=249 guifg=#b2b2b2 ctermbg=239 guibg=#4e4e4e cterm=bold gui=bold
" less important
highlight User2 ctermfg=235 guifg=#262626 ctermbg=239 guibg=#4e4e4e cterm=bold gui=bold
" backgound
highlight User3 ctermfg=234 guifg=#1c1c1c ctermbg=239 guibg=#4e4e4e cterm=bold gui=bold
" status lines of current window
highlight StatusLine   ctermfg=234  guifg=#1c1c1c ctermbg=239 guibg=#4e4e4e cterm=bold gui=bold
" status lines of not-current windows
highlight StatusLineNC ctermfg=237 guifg=#3a3a3a ctermbg=235 guibg=#3a3a3a cterm=none gui=none

let WATCHDOG_COLORS_LOADED = 1
