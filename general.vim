" Defining leader key
let g:mapleader = "\<Space>"


set number relativenumber	"Numbering

set nocompatible
set wildmenu			"Enabling tabcompletion in commandmode
set wildmode=longest:list,full	

set mouse=a			"Enabling use of mouse

set tabstop=4			"Inserts 4 spaces for a tab
set shiftwidth=4		"Change the number of space characters inserted for indentation
set smartindent			
set expandtab
set smarttab

"setting splitbehaviour
set splitbelow
set splitright

" TEXT EDITING
autocmd BufWritePost *.md silent execute "!pandoc % -o %:r.pdf"
command PandocPDF silent execute "!pandoc % -o %:r.pdf"
map <F6> :PandocPDF<CR>
command Zathura execute "!zathura %:r.pdf"      " For opening markdown files in zathura
map <F5> :Zathura<CR>
set spelllang=sv                                " Spellchecking for swedish

" ENCODING
set encoding=utf-8

" SEARCH OPTIONS
set ignorecase

" MISC. USEFUL STUFF
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif " Return to last edit position when opening files (You want this!)
