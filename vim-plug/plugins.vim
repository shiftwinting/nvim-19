" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')
  " syntax highlighting
  Plug 'sheerun/vim-polyglot'
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'
  " Git wrapper
  Plug 'tpope/vim-fugitive'
  " Quality of life plugins
  Plug 'jiangmiao/auto-pairs'
  Plug 'tpope/vim-commentary'
  " Menu
  Plug 'mhinz/vim-startify'
  Plug 'liuchengxu/vim-which-key'
  " Apperance
  Plug 'norcalli/nvim-colorizer.lua'
  Plug 'joshdick/onedark.vim'
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  " LSP stuff
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  " Movement Related
  Plug 'justinmk/vim-sneak'
call plug#end()
