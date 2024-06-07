return {
  'nvim-tree/nvim-tree.lua',
  version = '*',
  lazy = false,
  dependencies = {
    'nvim-tree/nvim-web-devicons',
  },
  config = function()
    require('nvim-tree').setup {
      update_focused_file = {
        enable = true,
        update_cwd = true,
        ignore_list = {},
      },
      view = {
        side = 'right',
        width = 35,
      },
      renderer = {
        highlight_opened_files = 'all',
      },
    }
  end,
}
