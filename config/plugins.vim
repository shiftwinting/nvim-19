call plug#begin()
    Plug 'sheerun/vim-polyglot'
    let g:polyglot_disabled = ['latex']
    Plug 'preservim/nerdtree'

" Latex support
    Plug 'lervag/vimtex'
    let g:tex_flavor='latex'
    let g:vimtex_view_method='zathura'
    let g:vimtex_quickfix_mode=0
    set conceallevel=1
    let g:tex_conceal='abdmg'
    let g:vimtex_compiler_latexmk = {
      \ 'build_dir' : 'output',
  \}

" Pandoc Markdown support
    Plug 'vim-pandoc/vim-pandoc'
    Plug 'vim-pandoc/vim-pandoc-syntax'

" Snippets
    Plug 'SirVer/ultisnips'

" Tree File View
    Plug 'scrooloose/nerdtree'
    let NERDTreeIgnore = ['\.pyc$', '\.class$', 'Test\.java']

" Themes
    Plug 'mhartington/oceanic-next'
    Plug 'Rigellute/shades-of-purple.vim'
    Plug 'kaicataldo/material.vim'

" Statusbar
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themevim-airline/vim-airlines'

" Fuzzy Search
    Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
    Plug 'junegunn/fzf.vim'

" for writing, to toggle, type :Goyo
    Plug 'junegunn/goyo.vim'
    Plug 'junegunn/limelight.vim' "focuses on the current paragraph

  
" Git support
    Plug 'tpope/vim-fugitive'
    call plug#end()
