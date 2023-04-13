local api = require("nvim-tree.api")
local function on_attach(bufnr)
  vim.keymap.set('n', 'o', api.node.open.edit,
    { desc = 'Open', buffer = bufnr, noremap = true, silent = true, nowait = true })
  vim.keymap.set('n', 'r', api.fs.rename,
    { desc = 'Rename', buffer = bufnr, noremap = true, silent = true, nowait = true })
end

require("nvim-tree").setup {
  on_attach = on_attach,
  view = {
    mappings = {
      custom_only = true,
      list = {
      }
    }
  }
}

local function auto_update_path()
  local buf = vim.api.nvim_get_current_buf()
  local bufname = vim.api.nvim_buf_get_name(buf)
  if vim.fn.isdirectory(bufname) or vim.fn.isfile(bufname) then
    require("nvim-tree.api").tree.find_file(vim.fn.expand("%:p"))
  end
end

vim.api.nvim_create_autocmd("BufEnter", { callback = auto_update_path })
local keymap = vim.keymap
keymap.set('n', ';t', ':NvimTreeToggle <CR>')
