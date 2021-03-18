
vim.g.vimwiki_list = {
  {
    path = '~/repos/The-Vault',
    syntax= 'markdown',
    ext= '.md',
    index= '_index',
  }
}

vim.g.vimwiki_key_mappings = {
  all_maps = 0
}
vim.g.vimwiki_global_ext = 0

vim.cmd('source $HOME/.config/nvim/vimscript/nv-vimwiki/init.vim')
