require 'hop'.setup()

local keymap = vim.keymap
keymap.set('n', 'fw', ':HopWord<CR>', { silent = true })
keymap.set('n', 'fc', ':HopChar2<CR>', { silent = true })
keymap.set('n', 'fl', ':HopLine<CR>', { silent = true })
