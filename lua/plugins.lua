local status, packer = pcall(require, "packer")
if (not status) then
  print("Packer is not installed")
  return
end

vim.cmd [[packadd packer.nvim]]

packer.startup(function(use)
  use 'wbthomason/packer.nvim'

  -- color schema
  use 'ayu-theme/ayu-vim'

  use 'nvim-lua/plenary.nvim' -- Common utilities
  -- LSP
  use 'neovim/nvim-lspconfig'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use 'hrsh7th/nvim-cmp'
  use 'L3MON4D3/LuaSnip'
  use 'jose-elias-alvarez/null-ls.nvim'
  use 'onsails/lspkind-nvim' -- pictograms
  use 'folke/lsp-colors.nvim'
  use 'glepnir/lspsaga.nvim'

  -- file finder
  use 'nvim-telescope/telescope.nvim'

  -- file explorer
  use 'mcchrish/nnn.vim'

  -- status line
  use 'nvim-lualine/lualine.nvim'

  -- tabs
  use 'kdheepak/tabline.nvim'

  -- icons
  use 'kyazdani42/nvim-web-devicons'

  use 'norcalli/nvim-colorizer.lua'

  use {
    'phaazon/hop.nvim',
    branch = 'v2'
  }

  -- prisma syntax highlight
  use 'pantharshit00/vim-prisma'

  -- terraform syntax highlight
  use 'hashivim/vim-terraform'

  use {
    "windwp/nvim-autopairs",
    config = function() require("nvim-autopairs").setup {} end
  }

  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }

  use 'kdheepak/lazygit.nvim'

  use({
    "iamcco/markdown-preview.nvim",
    run = "cd app && npm install",
    setup = function() vim.g.mkdp_filetypes = { "markdown" } end,
    ft = { "markdown" },
  })

  use 'tpope/vim-fugitive'

  -- git diffview
  use { 'sindrets/diffview.nvim', requires = 'nvim-lua/plenary.nvim' }

  use 'folke/zen-mode.nvim'

  use 'lewis6991/gitsigns.nvim'
end)
