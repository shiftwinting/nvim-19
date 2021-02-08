let g:vimwiki_list = [{'path': '~/repos/The-Vault', 'syntax': 'markdown', 'ext': '.md', 'index': '_index'}]
let g:vimwiki_key_mappings = { 'all_maps': 0, }
let g:vimwiki_global_ext = 0

augroup textformat_wiki
  autocmd!
  autocmd FileType vimwiki setlocal wrap linebreak
augroup END

