-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Remap <Cmd-[> to go back in the jump list (like <C-o>)
vim.keymap.set("n", "<D-[>", "<C-o>", { desc = "Jump back in jump list" })

-- Remap <Cmd-]> to go forward in the jump list (like <C-i>)
vim.keymap.set("n", "<D-]>", "<C-i>", { desc = "Jump forward in jump list" })

vim.keymap.set({ "i", "x", "n", "s" }, "<D-s>", "<cmd>w<cr><esc>", { desc = "Save File" })

-- Rustacian Keymaps:
local wk = require("which-key")
wk.add({
  { "<leader>r", group = "Rust", icon = "" }, -- group
  {
    "<leader>rm",
    function()
      vim.cmd.RustLsp("expandMacro")
    end,
    desc = "Expand Macro",
    icon = "󰘖",
    mode = "n",
  },
  {
    "<leader>rk",
    function()
      vim.cmd.RustLsp("openDocs")
    end,
    desc = "Open docs.rs",
    icon = "",
    mode = "n",
  },
  {
    "<leader>rc",
    function()
      vim.cmd.RustLsp("openCargo")
    end,
    desc = "Open Cargo.toml",
    icon = "",
    mode = "n",
  },
  {
    "<leader>rr",
    function()
      vim.cmd.RustLsp("run")
    end,
    desc = "Run",
    icon = "",
    mode = "n",
  },
  {
    "<leader>rR",
    function()
      vim.cmd.RustLsp("runnables")
    end,
    desc = "Runnables",
    icon = "󱧺",
    mode = "n",
  },
  {
    "<leader>rH",
    function()
      vim.cmd.RustLsp({ "view", "hir" })
    end,
    desc = "View HIR",
    icon = "",
    mode = "n",
  },
  {
    "<leader>rM",
    function()
      vim.cmd.RustLsp({ "view", "mir" })
    end,
    desc = "View MIR",
    icon = "",
    mode = "n",
  },
  {
    "<leader>rT",
    function()
      vim.cmd.RustLsp("syntaxTree")
    end,
    desc = "View Syntax Tree",
    icon = "󱘎",
    mode = "n",
  },

  {
    "<leader>rd",
    function()
      vim.cmd.RustLsp({ "renderDiagnostic", "current" })
    end,
    desc = "Render Diagnostic",
    icon = "",
    mode = "n",
  },
  {
    "<leader>re",
    function()
      vim.cmd.RustLsp({ "explainError", "current" })
    end,
    desc = "Explain Error",
    icon = "",
    mode = "n",
  },
})
