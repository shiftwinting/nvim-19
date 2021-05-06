local remap = vim.api.nvim_set_keymap

remap('n', '-', ':RnvimrToggle<CR>', {noremap = true, silent = true})


-- better window movement
remap('n', '<C-n>', '<C-w>h', {silent = true})
remap('n', '<C-e>', '<C-w>j', {silent = true})
remap('n', '<C-i>', '<C-w>k', {silent = true})
remap('n', '<C-o>', '<C-w>l', {silent = true})

-- better indenting
remap('v', '<', '<gv', {noremap = true, silent = true})
remap('v', '>', '>gv', {noremap = true, silent = true})

-- Tab switch buffer
remap('n', '<TAB>', ':bnext<CR>', {noremap = true, silent = true})
remap('n', '<S-TAB>', ':bprevious<CR>', {noremap = true, silent = true})

-- Move selected line / block of text in visual mode
remap('x', 'K', ':move \'<-2<CR>gv-gv', {noremap = true, silent = true})
remap('x', 'J', ':move \'>+1<CR>gv-gv', {noremap = true, silent = true})

-- Better nav for omnicomplete
vim.cmd('inoremap <expr> <c-j> (\"\\<C-n>\")')
vim.cmd('inoremap <expr> <c-k> (\"\\<C-p>\")')
