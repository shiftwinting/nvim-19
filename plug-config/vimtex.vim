let g:vimtex_compiler_progname = 'nvr'
let g:tex_flavor='latex'
let g:vimtex_view_method='zathura'
let g:vimtex_quickfix_mode=0
set conceallevel=2
let g:tex_conceal='abmg'
let g:vimtex_compiler_latexmk = {
    \ 'build_dir' : 'output',
    \}