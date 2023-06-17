local keymap = vim.keymap

-- select all
keymap.set('n', '<C-a>', 'gg<S-v>G')

-- always center
keymap.set('n', 'j', 'jzz', { noremap = true, silent = true })
keymap.set('n', 'k', 'kzz', { noremap = true, silent = true })

-- escape insert mode
keymap.set('i', 'jj', '<ESC>', { noremap = true, silent = true })

-- split remaps
keymap.set('n', 'ss', ':split<Return><C-w>w')
keymap.set('n', 'sv', ':vsplit<Return><C-w>w')
keymap.set('n', '<Space>', '<C-w>w')
--keymap.set('', 'sh', '<C-w>h')
--keymap.set('', 'sk', '<C-w>k')
--keymap.set('', 'sj', '<C-w>j')
--keymap.set('', 'sl', '<C-w>l')

-- Resize window
keymap.set('n', 'sh', '<C-w><')
keymap.set('n', 'sl', '<C-w>>')
keymap.set('n', 'sk', '<C-w>+')
keymap.set('n', 'sj', '<C-w>-')

-- quit
keymap.set('n', 'q', ':q<CR>', { silent = true })
keymap.set('n', 'Q', ':q!<CR>', { silent = true })

-- save
keymap.set('n', 'sw', ':w<CR>', { silent = true })

-- close buffer
keymap.set('n', ';x', ':bp<bar>sp<bar>bn<bar>bd<CR><CR>', { noremap = true, silent = true })
