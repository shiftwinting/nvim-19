" Defining leader key
let mapleader=" "
nnoremap <Space> <Nop>

let maplocalleader = " "

" TOOLS
set number relativenumber	"Numbering
set ruler
set mouse=a			"Enabling use of mouse

set hidden


" ENCODING
set encoding=utf-8

" WILDMENU
set wildmenu			"Enabling tabcompletion in commandmode
set wildmode=longest:list,full	



" INDENTATION
set tabstop=4			"Inserts 4 spaces for a tab
set shiftwidth=4		"Change the number of space characters inserted for indentation
set autoindent			
filetype indent on
set expandtab
set smarttab

" TEXT APPERANCE
set nowrap
set nolinebreak


set clipboard+=unnamedplus               " Makes yank and paste use the clipboard by default
set updatetime=300                      " Faster completion

" WINDOW BEHAVIOUR
set splitright
set splitbelow

" BUFFER BEHAVIOUR
set hidden



" Turn on some options for when editing markdown files
augroup auto_spellcheck
    autocmd BufNewFile,BufRead *.md setlocal spell wrap linebreak spelllang=sv
    "autocmd BufWritePost *.md silent execute \"!pandoc % -o %:r.pdf"
    autocmd BufNewFile,BufRead *.tex setlocal spell wrap linebreak spelllang=sv
augroup END

let g:markdown_fenced_languages = ['scala', 'python', 'java']

" SEARCH OPTIONS
set ignorecase

" MISC. USEFUL STUFF
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif " Return to last edit position when opening files (You want this!)
