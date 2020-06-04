"Leader key is defined in general.vim for because of how vim loads settings
"and plugins


" For inserting a default latex environment. Not needen when using the superior ultisnips plugin
" nmap <F7> i\documentclass{article}<CR>\usepackage[utf8]{inputenc}<CR><CR>\title{Titel}<CR>\author{Christoffer Fjälborg Rinaldo}<CR>\date{<C-R>=strftime("%Y-%m-%d %a %I:%M %p")<CR>}<CR><CR>\begin{document}<CR><CR>\maketitle<CR><CR>\section{First section}<CR><CR>\end{document}<Esc>

"for entering "writing mode"
nnoremap <F9> :Goyo <bar> setlocal spell! <bar> setlocal wrap linebreak<CR>

" Makes jk or kj behave like escape
"inoremap jk <Esc>
"inoremap kj <Esc>

"Makes ii behave like escape
inoremap ii <Esc>

" Better window navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Use alt + hjkl to resize windows
nnoremap <M-j>    :resize -2<CR>
nnoremap <M-k>    :resize +2<CR>
nnoremap <M-h>    :vertical resize -2<CR>
nnoremap <M-l>    :vertical resize +2<CR>

" Vim games for improving vim speed
nnoremap <leader>vbg ggVGd:VimBeGood <CR>

"Vim-fugitive gitwraper bindings
nnoremap <leader>gs :G<CR>


