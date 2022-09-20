local status, packer = pcall(require, "packer")
if (not status) then
  print("Packer is not installed")
  return
end

vim.cmd [[packadd packer.nvim]]

packer.startup(function(use)
  use 'wbthomason/packer.nvim'

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

  -- color schema
  use 'ayu-theme/ayu-vim'

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
end)
