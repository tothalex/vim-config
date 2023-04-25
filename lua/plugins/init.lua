local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath, })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  "nvim-lua/plenary.nvim",

  -- LSP
  "nvim-treesitter/nvim-treesitter",
  "neovim/nvim-lspconfig",
  "onsails/lspkind-nvim",
  "hrsh7th/nvim-cmp",
  "hrsh7th/cmp-nvim-lua",
  "hrsh7th/cmp-nvim-lsp",
  "hrsh7th/cmp-buffer",
  "hrsh7th/cmp-path",
  {
    "windwp/nvim-autopairs",
    config = function() require("nvim-autopairs").setup {} end
  },
  "L3MON4D3/LuaSnip",
  {
    "williamboman/mason.nvim",
    build = ":MasonUpdate" -- :MasonUpdate updates registry contents
  },
  {
    "glepnir/lspsaga.nvim",
    event = "LspAttach",
    dependencies = {
      { "nvim-tree/nvim-web-devicons" },
    }
  },

  -- format, lint
  "jose-elias-alvarez/null-ls.nvim",

  -- file navigation
  "nvim-telescope/telescope.nvim",
  "mcchrish/nnn.vim",
  "nvim-tree/nvim-tree.lua",

  -- ui
  "kdheepak/tabline.nvim",
  "norcalli/nvim-colorizer.lua",
  "nvim-lualine/lualine.nvim",
  {
    "olimorris/onedarkpro.nvim",
    priority = 1000 -- Ensure it loads first
  },

  -- navigation in text
  "phaazon/hop.nvim",

  -- lsp navigation
  "glepnir/lspsaga.nvim",
  "lewis6991/gitsigns.nvim",

  -- terraform
  "hashivim/vim-terraform"
})
