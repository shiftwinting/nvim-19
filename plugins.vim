" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif


call plug#begin('~/.config/nvim/plugged')

Plug 'sheerun/vim-polyglot' 		    "Language pack for syntax highlighting
let g:polyglot_disabled = ['latex']

" language server thingies
Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'lervag/vimtex'			        "Latex support
let g:vimtex_compiler_progname = 'nvr'
let g:tex_flavor='latex'
let g:vimtex_view_method='zathura'
let g:vimtex_quickfix_mode=0
set conceallevel=2
let g:tex_conceal='abmg'
let g:vimtex_compiler_latexmk = {
    \ 'build_dir' : 'output',
    \}

" FILE MANAGEMENT
Plug 'preservim/nerdtree'		        "File navigation
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'			            "Fyzzy finder
Plug 'kevinhwang91/rnvimr', {'do': 'make sync'}


" THEMING AND APPERANCE
Plug 'morhetz/gruvbox'                  "Gruvbox theme, might work better than wal theme
Plug 'norcalli/nvim-colorizer.lua'      "View hexholors, rgb colors etc. in real time
Plug 'mhinz/vim-startify'               " Gives vim a startscreen to quickly navigate to recently used files and such


" FOR WRITING
Plug 'junegunn/goyo.vim'		        "write command Goyo for writing mode 
Plug 'vim-pandoc/vim-pandoc'            "Pandoc integration for compiling markdown documents
Plug 'vim-pandoc/vim-pandoc-syntax'     "Syntax for pandoc

" FOR ULTRAFAST LATEX FORMULAS
Plug 'sirver/ultisnips'
let g:UltiSnipsExpandTrigger = '<tab>'
let g:UltiSnipsJumpForwardTrigger = '<tab>'
let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'
let g:UltiSnipsSnippetsDir = "/home/chris/.config/nvim/UltiSnips"                       "have to include the whole directory for it to work with neovim
let g:UltiSnipsSnippetDirectories=["UltiSnips", "/home/chris.config/nvim/Ultisnips"]    "have to include the whole directory for it to work with neovim

"MOVEMENT
Plug 'justinmk/vim-sneak'               "Using this for its vertikal movements
Plug 'unblevable/quick-scope'           "using this for its horisontal movements


"Plugins for training up my vimspeed
Plug 'ThePrimeagen/vim-be-good', {'do': './install.sh' }         "to use, enter command VimBeGood
Plug 'liuchengxu/vim-which-key', { 'on': ['WhichKey', 'WhichKey!'] } "on demand lazy loading


"Git integration
Plug 'tpope/vim-fugitive'


call plug#end()
filetype plugin on

