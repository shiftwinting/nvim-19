syntax on
set number relativenumber

set nocompatible
filetype plugin on
syntax on

highlight LineNr term=bold cterm=NONE ctermfg=Grey ctermbg=NONE gui=NONE guifg=DarkGrey guibg=NONE

let mapleader = ","

" tab stuff
set tabstop=4
set softtabstop=4
set expandtab
set smarttab
set shiftwidth=4
set autoindent
set smartindent

" Always utf8
set termencoding=utf-8
" set encoding=utf-8
set fileencoding=utf-8

" Turn on the Wild menu
set wildmenu
set wildmode=longest:list,full

"Always show current position
set ruler

"Ignore case when searching
set ignorecase

" Return to last edit position when opening files (You want this!)
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

" Always show the status line
set laststatus=2

" Enable theming support
if (has("termguicolors"))
    set termguicolors
endif

" Theme
syntax enable
colorscheme material

" Automatically enable spell check in the given file types
autocmd FileType latex,tex,md,markdown setlocal spell
" Automatically compile markdown files
autocmd BufWritePost *.md silent execute "!pandoc % -o %:r.pdf"
command PandocPDF silent execute "!pandoc % -o %:r.pdf"
map <F6> :PandocPDF<CR>
" For opening markdown files in zathura
command Zathura execute "!zathura %:r.pdf"
map <F5> :Zathura<CR>
