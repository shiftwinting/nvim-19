

local execute = vim.api.nvim_command
local fn = vim.fn

local install_path = fn.stdpath('data')..'/site/pack/packer/opt/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
  execute('!git clone https://github.com/wbthomason/packer.nvim '..install_path)
  execute 'packadd packer.nvim'
end

vim.cmd [[packadd packer.nvim]]

vim.cmd 'autocmd BufWritePost plugins.lua PackerCompile' -- Auto compile when there are changes in plugins.lua

return require('packer').startup(function(use)
  -- Packer can manage itself as an optional plugin
  use {'wbthomason/packer.nvim', opt = true}

  -- Information
  use 'nanotee/nvim-lua-guide'

  -- Quality of life improvements
  use 'norcalli/nvim_utils'

  -- LSP
  use 'neovim/nvim-lspconfig'
  use 'glepnir/lspsaga.nvim'
  use 'onsails/lspkind-nvim'
  use 'kosayoda/nvim-lightbulb'
  use 'mfussenegger/nvim-jdtls'

  -- Debugging
  use 'mfussenegger/nvim-dap'

  -- Autocomplete
  use 'hrsh7th/nvim-compe'
  use 'hrsh7th/vim-vsnip'
  use 'hrsh7th/vim-vsnip-integ'
  use 'honza/vim-snippets'
  -- use 'epilande/vim-react-snippets'
  -- use 'xabikos/vscode-javascript'
  -- use 'cstrap/python-snippets'
  -- use 'ylcnfrht/vscode-python-snippet-pack'
  -- use 'golang/vscode-go'
  -- use 'rust-lang/vscode-rust'
  -- use 'SirVer/ultisnips'
  -- use 'norcalli/snippets.nvim'


  -- Treesitter
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
  use 'nvim-treesitter/playground'
  use 'p00f/nvim-ts-rainbow'

  -- Icons
  use 'kyazdani42/nvim-web-devicons'
  use 'ryanoasis/vim-devicons'

  -- Status Line and Bufferline
  use 'glepnir/galaxyline.nvim' -- Bufferline enchancer
  use 'romgrk/barbar.nvim' --Tabline enhancer

  -- Telescope
  use 'nvim-lua/popup.nvim'
  use 'nvim-lua/plenary.nvim'
  use 'nvim-telescope/telescope.nvim'
  use 'nvim-telescope/telescope-media-files.nvim'

  -- Explorer
  use 'kyazdani42/nvim-tree.lua'

  -- Color
  use 'christianchiarulli/nvcode-color-schemes.vim'
  use 'norcalli/nvim-colorizer.lua'

  -- Git
  use 'TimUntersberger/neogit'
  use {'lewis6991/gitsigns.nvim', requires = { 'nvim-lua/plenary.nvim' } }
  use 'f-person/git-blame.nvim'
  use 'tpope/vim-fugitive'
  use 'tpope/vim-rhubarb'

  -- Wiki
 use 'vimwiki/vimwiki'

  -- General Plugins
  use 'windwp/nvim-autopairs'
  use 'kevinhwang91/nvim-bqf'
  use 'unblevable/quick-scope'
  use 'airblade/vim-rooter'
  use 'kevinhwang91/rnvimr'
  use 'mhinz/vim-startify'
  use 'metakirby5/codi.vim'
  use 'psliwka/vim-smoothie'
  use {'iamcco/markdown-preview.nvim', run = 'cd app && npm install' }
  use 'moll/vim-bbye'
  use 'turbio/bracey.vim'
  use 'AndrewRadev/tagalong.vim'
  use 'alvan/vim-closetag'
  use { 'glacambre/firenvim', run = function() vim.fn['firenvim#install'](1) end }
  use 'liuchengxu/vim-which-key'
  use 'tpope/vim-sleuth'
  use 'voldikss/vim-floaterm'
  use 'phaazon/hop.nvim'
  use 'liuchengxu/vista.vim'
  -- use { 'npxbr/glow.nvim', run = ':GlowInstall' }
  -- figure out how to disable or configure for things with tags like <div></div> because it will highlight all divs
  use 'RRethy/vim-illuminate'
  use 'terrortylor/nvim-comment'
  -- use 'tpope/vim-commentary'
  -- use 'suy/vim-context-commentstring'
  -- use 'b3nj5m1n/kommentary'
  use 'andymass/vim-matchup'
  use 'junegunn/goyo.vim'
  use 'bfredl/nvim-miniyank'
  use 'brooth/far.vim'
end)
