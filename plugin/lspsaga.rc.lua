local status, saga = pcall(require, "lspsaga")
if (not status) then return end

saga.setup({
  ui = {
    winblend = 10,
    border = "shadow",
    code_action = "",
  },
  symbol_in_winbar = {
    enable = false,
    show_file = false,
    hide_keyword = false,
    color_mode = false,
    separator = "  ",
  }
})

local opts = { noremap = true, silent = true }
vim.keymap.set('n', '<C-j>', '<Cmd>Lspsaga diagnostic_jump_next<CR>', opts)
vim.keymap.set('n', 'K', '<Cmd>Lspsaga hover_doc<CR>', opts)
vim.keymap.set('n', 'gf', '<Cmd>Lspsaga lsp_finder<CR>', opts)
vim.keymap.set('i', '<C-k>', '<Cmd>Lspsaga signature_help<CR>', opts)
vim.keymap.set('n', 'gp', '<Cmd>Lspsaga preview_definition<CR>', opts)
vim.keymap.set('n', 'gr', '<Cmd>Lspsaga rename<CR>', opts)
