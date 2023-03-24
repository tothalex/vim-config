local keymap = vim.keymap
vim.cmd [[highlight CopilotSuggestion guifg=#39BAE6 gui=bold]]

keymap.set("i", "<C-J>", 'copilot#Previous()', { silent = true, expr = true })
keymap.set("i", "<C-L>", 'copilot#Accept("<CR>")', { silent = true, expr = true })

vim.g.copilot_enable = true
vim.g.copilot_no_tab_map = true
