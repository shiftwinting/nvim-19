-- Buffer behavior
vim.o.hidden=true                              --Required to keep multiple buffers open multiple buffers
-- Encoding
vim.o.fileencoding="utf-8"                  --The encoding written to file
 
-- Menu and
vim.o.pumheight=10                        --Makes popup menu smaller
vim.o.cmdheight=2                         --More space for displaying messages

vim.o.mouse="a"                             --Enable your mouse

-- textwrap
vim.wo.wrap=false                              --Display long lines as just one line
vim.cmd('set whichwrap+=<,>,[,],h,l')

-- Search behavior
vim.o.ignorecase=true
vim.o.smartcase=true

-- Splitting behavior
vim.o.splitright=true                          --Vertical splits will automatically be to the right
vim.o.splitbelow=true                          --Horizontal splits will automatically be below

-- Indentation behavior
vim.bo.expandtab=true                           --Converts tabs to spaces
vim.bo.smartindent=true                         --Makes indenting smart
vim.cmd('set ts=4')                           --Insert 2 spaces for a tab
vim.cmd('set sw=4')                        --Change the number of space characters inserted for indentation
vim.o.showtabline=2                       --Always show tabs

-- Number column
vim.o.number = true
vim.o.relativenumber = true
vim.o.signcolumn="yes"                      --Always show the signcolumn, otherwise it would shift the text each time

-- Visual
vim.wo.cursorline=true                          --Enable highlighting of the current line
vim.o.ruler=true
vim.o.showmode=false                          --We don't need to see things like -- INSERT -- anymore

-- Backups and swapfiles
vim.o.backup=false                            -- Better intergration with lsp servers
vim.o.writebackup=false                       -- Better intergration with lsp servers
vim.o.swapfile=false

-- Update time
vim.o.updatetime=300                      --Faster completion
vim.o.timeoutlen=100                      --By default timeoutlen is 1000 ms

-- Registers behavior
vim.o.clipboard="unnamedplus"               --Copy paste between vim and everything else
vim.o.scrolloff=5

-- Other
vim.o.conceallevel=0                      --So that I can see `` in markdown files
vim.cmd('set iskeyword+=-')                  --treat dash separated words as a word text object"
vim.o.termguicolors=true
