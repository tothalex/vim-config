local custom_onedark = require 'lualine.themes.onedark_dark'
custom_onedark.normal.c.bg = '#000000'


require 'tabline'.setup {
  -- Defaults configuration options
  enable = true,
  options = {
    -- If lualine is installed tabline will use separators configured in lualine by default.
    -- These options can be used to override those settings.
    section_separators = { '', '' },
    component_separators = { '', '' },
    max_bufferline_percent = 66, -- set to nil by default, and it uses vim.o.columns * 2/3
    show_tabs_always = false,    -- this shows tabs only when there are more than one tab or if the first tab is named
    show_devicons = true,        -- this shows devicons in buffer section
    show_bufnr = false,          -- this appends [bufnr] to buffer section,
    show_filename_only = false,  -- shows base filename only instead of relative path in filename
    modified_icon = "+ ",        -- change the default modified icon
    modified_italic = false,     -- set to true by default; this determines whether the filename turns italic if modified
    show_tabs_only = false,      -- this shows only tabs instead of tabs + buffers
  }
}

vim.keymap.set('n', '<Tab>', '<Cmd>TablineBufferNext<CR>', {})
vim.keymap.set('n', '<S-Tab>', '<Cmd>TablineBufferPrev<CR>', {})

require 'colorizer'.setup {
  '*',    -- Highlight all files, but customize some others.
  '!vim', -- Exclude vim from highlighting.
  -- Exclusion Only makes sense if '*' is specified!
}

local status, lualine = pcall(require, "lualine")
if (not status) then return end

lualine.setup {
  options = {
    icons_enabled = true,
    section_separators = { left = '', right = '' },
    component_separators = { left = '', right = '' },
    disabled_filetypes = {},
    theme = custom_onedark,
    globalstatus = true,
  },
  sections = {
    lualine_a = { 'mode' },
    lualine_b = { 'branch' },
    lualine_c = { {
      'filename',
      file_status = true, -- displays file status (readonly status, modified status)
      path = 0,           -- 0 = just filename, 1 = relative path, 2 = absolute path
    } },
    lualine_x = {
      {
        'diagnostics',
        sources = { "nvim_diagnostic" },
        symbols = {
          error = ' ',
          warn = ' ',
          info = ' ',
          hint = ' '
        }
      },
      'encoding',
      'filetype'
    },
    lualine_y = { 'progress' },
    lualine_z = { 'location' }
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = { {
      'filename',
      file_status = true, -- displays file status (readonly status, modified status)
      path = 1            -- 0 = just filename, 1 = relative path, 2 = absolute path
    } },
    lualine_x = { 'location' },
    lualine_y = {},
    lualine_z = {}
  },
  tabline = {},
  extensions = { 'fugitive' }
}

require 'nvim-web-devicons'.setup {
  override = {
    zsh = {
      icon = "",
      color = "#428850",
      cterm_color = "65",
      name = "Zsh"
    }
  },
  color_icons = true,
  default = true,
  strict = true,
  override_by_filename = {
    [".gitignore"] = {
      icon = "",
      color = "#f1502f",
      name = "Gitignore"
    }
  },
  override_by_extension = {
    ["log"] = {
      icon = "",
      color = "#81e043",
      name = "Log"
    }
  },
}

vim.cmd("colorscheme onedark_dark")
