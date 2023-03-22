local vim = vim
local opt = vim.opt

opt.foldmethod = "expr"
opt.foldexpr = "nvim_treesitter#foldexpr()"

vim.api.nvim_exec([[
  autocmd FileType * exe "normal zR"
]], false)
