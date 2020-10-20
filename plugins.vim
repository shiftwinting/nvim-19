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
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'			            "Fuzzy finder

" THEMING AND APPERANCE
Plug 'morhetz/gruvbox'                  "Gruvbox theme, might work better than wal theme
Plug 'norcalli/nvim-colorizer.lua'      "View hexholors, rgb colors etc. in real time
Plug 'mhinz/vim-startify'               " Gives vim a startscreen to quickly navigate to recently used files and such

  let g:startify_session_dir = '~/.config/nvim/session'       "where we want startify to save our sessions

  let g:startify_lists = [
            \ { 'type': 'files',     'header': ['   Files']            },
            \ { 'type': 'dir',       'header': ['   Current Directory '. getcwd()] },
            \ { 'type': 'sessions',  'header': ['   Sessions']       },
            \ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
            \ ]
  let g:startify_bookmarks = [
              \ { 'i': '~/.config/nvim/init.vim' },
              \ ]
  let g:startify_custom_header = [
          \'   ███▄    █ ██▒   █▓ ██▓ ███▄ ▄███▓',
          \'   ██ ▀█   █▓██░   █▒▓██▒▓██▒▀█▀ ██▒',
          \'  ▓██  ▀█ ██▒▓██  █▒░▒██▒▓██    ▓██░',
          \'  ▓██▒  ▐▌██▒ ▒██ █░░░██░▒██    ▒██ ',
          \'  ▒██░   ▓██░  ▒▀█░  ░██░▒██▒   ░██▒',
          \'  ░ ▒░   ▒ ▒   ░ ▐░  ░▓  ░ ▒░   ░  ░',
          \'  ░ ░░   ░ ▒░  ░ ░░   ▒ ░░  ░      ░',
          \'     ░   ░ ░     ░░   ▒ ░░      ░   ',
          \'           ░      ░   ░         ░   ',
          \'                 ░                  ',
          \]


" FOR WRITING
Plug 'junegunn/goyo.vim'		        "write command Goyo for writing mode 
Plug 'vim-pandoc/vim-pandoc'            "Pandoc integration for compiling markdown documents
let g:pandoc#modules#disabled = ["folding"]
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

  let g:sneak#label = 1
  let g:sneak#use_ic_scs = 1 " case insensitive sneak
  let g:sneak#s_next = 1 " immediately move to the next instance of search, if you move the cursor sneak is back to default behavior
  " remap so i can use , and ; with f and t
  map gs <plug>sneak_,
  map gs <plug>sneak_;
  " change the colors
  highlight sneak guifg=black guibg=#00c7df ctermfg=black ctermbg=cyan
  highlight sneakscope guifg=red guibg=yellow ctermfg=red ctermbg=yellow

Plug 'unblevable/quick-scope'           "using this for its horisontal movements

"Git integration
Plug 'tpope/vim-fugitive'


call plug#end()
filetype plugin on

