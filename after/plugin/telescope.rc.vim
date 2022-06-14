if !exists('g:loaded_telescope') | finish | endif

lua << EOF
function telescope_buffer_dir()
  return vim.fn.expand('%:p:h')
end

local telescope = require('telescope')
local actions = require('telescope.actions')

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
EOF

