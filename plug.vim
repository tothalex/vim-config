call plug#begin('~/.vim/plugged')
" color theme
Plug 'ayu-theme/ayu-vim'


" git related plugins
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'

" allow mouse controll
Plug 'wincent/terminus'

" terraform
Plug 'hashivim/vim-terraform'

" graphql
Plug 'jparise/vim-graphql'

if has('nvim')
  " lsp
  Plug 'neovim/nvim-lspconfig'
  Plug 'jose-elias-alvarez/null-ls.nvim'

  " lsp auto completion
  Plug 'hrsh7th/cmp-nvim-lsp'
  Plug 'hrsh7th/cmp-buffer'
  Plug 'hrsh7th/cmp-path'
  Plug 'hrsh7th/cmp-cmdline'
  Plug 'hrsh7th/nvim-cmp'
  Plug 'hrsh7th/cmp-vsnip'
  Plug 'hrsh7th/vim-vsnip'

  " lsp aesthetics
  Plug 'onsails/lspkind-nvim'
  Plug 'folke/lsp-colors.nvim'

  " better syntax highlighting
  Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'} 

  " telescop dependency 
  Plug 'nvim-lua/plenary.nvim'
  " finder
  Plug 'nvim-telescope/telescope.nvim' 

  " status line
  Plug 'hoob3rt/lualine.nvim'
  Plug 'kdheepak/tabline.nvim'

  " icons
  Plug 'kyazdani42/nvim-web-devicons'

  " git client
  Plug 'kdheepak/lazygit.nvim'

  " nnn file explorer
  Plug 'mcchrish/nnn.vim'

  " rust
  Plug 'simrat39/rust-tools.nvim'
  Plug 'mfussenegger/nvim-dap'

  " git blame
  Plug 'APZelos/blamer.nvim'

  " autopair
  Plug 'windwp/nvim-autopairs'
endif

call plug#end()

