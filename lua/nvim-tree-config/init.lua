vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.opt.termguicolors = true
require('nvim-tree').setup({
  sort_by = 'case_sensitive',
  view = {
    width = 40,
    side = 'left',
  },
  filters = {
    dotfiles = true,
  },
  diagnostics = {
    enable = false,
    icons = {
      hint = '',
      info = '',
      warning = '',
      error = '',
    },
  },
  actions = {
    open_file = {
      quit_on_open = true,
    },
  },
})
