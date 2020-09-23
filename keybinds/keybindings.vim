"for entering "writing mode"
nnoremap <F9> : Writingmode

" TEXT EDITING
command PandocPDF silent execute "!pandoc % -o %:r.pdf"
map <F6> :PandocPDF<CR>
command Zathura execute "!zathura %:r.pdf"      " For opening markdown files in zathura
map <F5> :Zathura<CR>

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

"Vim-fugitive gitwraper bindings
nnoremap <leader>gs :G<CR>


