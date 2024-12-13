return {
  -- {
  --   "sainnhe/sonokai",
  --   lazy = false,
  --   priority = 1000,
  --   config = function()
  --     -- Optionally configure and load the colorscheme
  --     -- directly inside the plugin declaration.
  --     vim.g.sonokai_enable_italic = true
  --     vim.cmd.colorscheme("sonokai")
  --   end,
  -- },
  {
    "folke/tokyonight.nvim",
    enabled = false,
  },
  {
    "catppuccin/nvim",
    enabled = false,
  },
  {
    "rebelot/kanagawa.nvim",
    name = "kanagawa",
    lazy = false,
    priority = 1000,
    build = "KanagawaCompile",
    config = function(_, opts)
      require("kanagawa").setup({
        theme = "dragon",
        compile = true,
        undercurl = true,
        commenttyle = { italic = true },
        keywordStyle = { italic = true },
        statementStyle = { bold = true },
        terminalColors = false, -- define vim.g.terminal_color_{0,17}
        colors = {
          theme = {
            all = {
              ui = {
                bg_gutter = "none",
              },
            },
          },
        },
      })
      vim.cmd("colorscheme kanagawa-wave")
    end,
  },
  -- Configure LazyVim to load gruvbox
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "kanagawa-wave",
    },
  },
}
