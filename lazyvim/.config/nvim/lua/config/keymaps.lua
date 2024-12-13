-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })
-- vim.keymap.set("n", "<leader>uz", "<CMD>ZenMode<CR>", { desc = "Toggle ZenMode" })
-- vim.keymap.set("i", "jk", "<ESC>", { desc = "Alternativa to ESC" })

vim.keymap.set("i", "<C-S-h>", "<C-o>b", { desc = "Jumps words backforward" })
vim.keymap.set("i", "<C-S-l>", "<C-o>w", { desc = "Jumps words forward" })
