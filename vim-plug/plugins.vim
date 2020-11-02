" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

    " Better Syntax Support
    Plug 'sheerun/vim-polyglot'
    let g:polyglot_disabled = ['latex']
    Plug 'lervag/vimtex'
    " Auto pairs for '(' '[' '{'
    Plug 'jiangmiao/auto-pairs'
    " Comments out highlighted text
    Plug 'tpope/vim-commentary'
    " Themes and visual apperance
    Plug 'joshdick/onedark.vim' "General Theme
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'norcalli/nvim-colorizer.lua'
    "Language Server Thingies
    Plug 'neoclide/coc.nvim', {'branch': 'release'} " Stable version of coc
    Plug 'honza/vim-snippets'


    " FileManagement and searching
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
    Plug 'airblade/vim-rooter'
    " Visual menues
    Plug 'mhinz/vim-startify'
    Plug 'liuchengxu/vim-which-key'
    " Git integration
    Plug 'mhinz/vim-signify'
    Plug 'tpope/vim-fugitive'

    " Movement Related
    Plug 'justinmk/vim-sneak'

call plug#end()
