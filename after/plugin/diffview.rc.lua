local keymap = vim.keymap

keymap.set('n', ';d', ':DiffviewOpen<CR>', { silent = true })
keymap.set('n', ';q', ':DiffviewClose<CR>', { silent = true })
keymap.set('n', ';h', ':DiffviewFileHistory<CR>', { silent = true })
