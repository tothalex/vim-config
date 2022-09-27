local keymap = vim.keymap
keymap.set('n', ';gg', ':LazyGit <CR>')
keymap.set('n', ';gm', ':LazyGitFilter <CR>')
keymap.set('n', ';gf', ':LazyGitFilterCurrentFile <CR>')

