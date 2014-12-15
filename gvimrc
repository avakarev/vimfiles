colorscheme xoria256

set lines=30 columns=120 " Size of MacVim window
set linespace=0          " Number of pixel lines inserted between characters

set guioptions-=m " Do not display menu
set guioptions-=T " Do not display toolbar
set guioptions-=r " Do not display right-hand scrollbar
set guioptions-=L " Do not display left-hand scrollbar
set guioptions-=b " Do not display bottom (horizontal) scrollbar

set guicursor=a:blinkon0 " Switch off blinking for all modes

if has("gui_macvim") || has('gui_vimr')
    set guifont=Monaco:h13 " Make font size bigger
elseif has("unix")
    set guifont=DejaVu\ Sans\ Mono\ 11
endif

if exists('+colorcolumn')
    set colorcolumn=80
    highlight ColorColumn guibg=#262626
endif

if has('gui_running')
    set mousefocus " Mouse can control splits
endif

if has('gui_macvim') || has('gui_vimr')
    nmap <D-CR> :set fullscreen!<Bar> set fullscreen?<CR>
    vmap <D-CR> <ESC>:set fullscreen!<Bar> set fullscreen?<CR>
    imap <D-CR> <ESC>:set fullscreen!<Bar> set fullscreen?<CR>
endif

" GUI Tab settings
function! GuiTabLabel()
    let num = v:lnum
    let buflist = tabpagebuflist(num)
    let winnr = tabpagewinnr(num)
    let buflen = tabpagewinnr(num, '$')
    let bufname = fnamemodify(bufname(buflist[winnr - 1]), ':t')

    let label = '#' . num . ' '
    let label .= bufname == '' ? 'Empty' : bufname
    let label .= ' (' . buflen . ')'

    return label
endfunction
set guitablabel=%{GuiTabLabel()}

" Addionaly to <leader>+num from vimrc, map Cmd+num for switching to tab by number
noremap <D-1> 1gt
noremap <D-2> 2gt
noremap <D-3> 3gt
noremap <D-4> 4gt
noremap <D-5> 5gt
noremap <D-6> 6gt
noremap <D-7> 7gt
noremap <D-8> 8gt
noremap <D-9> 9gt
