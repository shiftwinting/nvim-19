call plug#begin('~/.config/nvim/plugged')

"Plug 'sheerun/vim-polyglot' 		    "Language pack for syntax highlighting
"let g:polyglot_disabled = ['latex']

Plug 'lervag/vimtex'			        "Latex support
let g:vimtex_compiler_progname = 'nvr'
let g:tex_flavor='latex'
let g:vimtex_view_method='zathura'
let g:vimtex_quickfix_mode=0
set conceallevel=2
let g:tex_conceal='abdmg'
let g:vimtex_compiler_latexmk = {
    \ 'build_dir' : 'output',
    \}

" FILE MANAGEMENT
Plug 'preservim/nerdtree'		        "File navigation
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'			            "Fyzzy finder


" THEMING
Plug 'arcticicestudio/nord-vim'		    "Nord theme
Plug 'vim-airline/vim-airline'		    "changes the menubar and adds the possibility of more features 
Plug 'vim-airline/vim-airline-themes'	"themes for the airline menubar
Plug 'dylanaraps/wal'                   "Pulls the theme data of the wal program and applies it to vim
Plug 'morhetz/gruvbox'                  "Gruvbox theme, might work better than wal theme


" FOR WRITING
Plug 'junegunn/goyo.vim'		        "write command Goyo for writing mode 
Plug 'vim-pandoc/vim-pandoc'            "Pandoc integration for compiling markdown documents
Plug 'vim-pandoc/vim-pandoc-syntax'     "Syntax for pandoc

" FOR ULTRAFAST LATEX FORMULAS
Plug 'sirver/ultisnips'
let g:UltiSnipsExpandTrigger = '<tab>'
let g:UltiSnipsJumpForwardTrigger = '<tab>'
let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'
let g:UltiSnipsSnippetsDir = "/home/chris/.config/nvim/UltiSnips"

let g:UltiSnipsSnippetDirectories=["UltiSnips", "/home/chris.config/nvim/Ultisnips"]

"Plugins for training up my vimspeed
Plug 'ThePrimeagen/vim-be-good'         "to use, enter command VimBeGood

call plug#end()
filetype plugin on

