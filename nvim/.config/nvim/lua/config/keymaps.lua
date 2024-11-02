-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here


-- Remap <Cmd-[> to go back in the jump list (like <C-o>)
vim.keymap.set("n", "<D-[>", "<C-o>", { desc = "Jump back in jump list" })

-- Remap <Cmd-]> to go forward in the jump list (like <C-i>)
vim.keymap.set("n", "<D-]>", "<C-i>", { desc = "Jump forward in jump list" })
