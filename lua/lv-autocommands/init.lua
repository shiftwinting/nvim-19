local utils = require('lv-utils')

local auto_formatters = {            }

local python_autoformat = {'BufWritePre', '*.py', 'lua vim.lsp.buf.formatting_sync(nil, 1000)'}
if O.python.autoformat then table.insert(auto_formatters, python_autoformat) end

local javascript_autoformat = {'BufWritePre', '*.js', 'lua vim.lsp.buf.formatting_sync(nil, 1000)'}
local javascriptreact_autoformat = {'BufWritePre', '*.jsx', 'lua vim.lsp.buf.formatting_sync(nil, 1000)'}
local typescript_autoformat = {'BufWritePre', '*.ts', 'lua vim.lsp.buf.formatting_sync(nil, 1000)'}
local typescriptreact_autoformat = {'BufWritePre', '*.tsx', 'lua vim.lsp.buf.formatting_sync(nil, 1000)'}
if O.tsserver.autoformat then
    table.insert(auto_formatters, javascript_autoformat)
    table.insert(auto_formatters, javascriptreact_autoformat)
	table.insert(auto_formatters, typescript_autoformat)
	table.insert(auto_formatters, typescriptreact_autoformat)
end

local lua_format = {'BufWritePre', '*.lua', 'lua vim.lsp.buf.formatting_sync(nil, 1000)'}
if O.lua.autoformat then table.insert(auto_formatters, lua_format) end

local json_format = {'BufWritePre', '*.json', 'lua vim.lsp.buf.formatting_sync(nil, 1000)'}
if O.json.autoformat then table.insert(auto_formatters, json_format) end

local ruby_format = {'BufWritePre', '*.rb', 'lua vim.lsp.buf.formatting_sync(nil,1000)'}
if O.ruby.autoformat then table.insert(auto_formatters, ruby_format) end

utils.define_augroups({
    _general_settings = {
        {'TextYankPost', '*', 'lua require(\'vim.highlight\').on_yank({higroup = \'Search\', timeout = 200})'},
        {'BufWinEnter', '*', 'setlocal formatoptions-=c formatoptions-=r formatoptions-=o'},
        {'BufRead', '*', 'setlocal formatoptions-=c formatoptions-=r formatoptions-=o'},
        {'BufNewFile', '*', 'setlocal formatoptions-=c formatoptions-=r formatoptions-=o'},
        {'VimLeavePre', '*', 'set title set titleold='}

        -- {'User', 'GoyoLeave', 'lua require(\'galaxyline\').disable_galaxyline()'},
        -- {'User', 'GoyoEnter', 'lua require(\'galaxyline\').galaxyline_augroup()'},
    },
    -- _markdown = {{'FileType', 'markdown', 'setlocal wrap'}},
    _markdown = {
		{'FileType', 'markdown', 'setlocal wrap linebreak'}, {'FileType', 'markdown', 'setlocal spell spelllang=sv,en'},
		{'FileType', 'markdown', 'nmap <buffer><silent> <leader>p :call mdip#MarkdownClipboardImage()<CR>'}
	},
    _gemini = {
        {'BufWinEnter', '.gmi', 'setlocal filetype=markdown'}, {'BufRead', '*.gmi', 'setlocal filetype=markdown'},
        {'BufNewFile', '*.gmi', 'setlocal filetype=markdown'}
    },
    _buffer_bindings = {
        {'FileType', 'lspinfo', 'nnoremap <silent> <buffer> q :q<CR>'},
        {'FileType', 'floaterm', 'nnoremap <silent> <buffer> q :q<CR>'},
    },
    _auto_formatters = auto_formatters
})
