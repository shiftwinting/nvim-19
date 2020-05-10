" For inserting a default latex environment
nmap <F7> i\documentclass{article}<CR>\usepackage[utf8]{inputenc}<CR><CR>\title{Titel}<CR>\author{Christoffer Fjälborg Rinaldo}<CR>\date{<C-R>=strftime("%Y-%m-%d %a %I:%M %p")<CR>}<CR><CR>\begin{document}<CR><CR>\maketitle<CR><CR>\section{First section}<CR><CR>\end{document}<Esc>

"for entering "writing mode"
map <F9> :Goyo <bar> setlocal spell! <bar> setlocal wrap linebreak<CR>

" Makes jk or kj behave like escape
inoremap jk <Esc>
inoremap kj <Esc>

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


