local telescope = require('telescope')
local actions = require('telescope.actions')
local builtin = require("telescope.builtin")

telescope.setup {
  defaults = {
    mappings = {
      n = {
        ["q"] = actions.close,
      },
    },
    file_ignore_patterns = {
      "node%_modules/.*",
      "dist/.*"
    },
  },
  pickers = {
    find_files = {
      theme = "ivy",
    }
  },
}

vim.keymap.set('n', ';f',
  function()
    builtin.find_files({
      no_ignore = false,
      hidden = false
    })
  end)

vim.keymap.set('n', ';r', function()
  builtin.live_grep()
end)
