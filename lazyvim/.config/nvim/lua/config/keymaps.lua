-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })
-- vim.keymap.set("n", "<leader>uz", "<CMD>ZenMode<CR>", { desc = "Toggle ZenMode" })
-- vim.keymap.set("i", "jk", "<ESC>", { desc = "Alternativa to ESC" })

-- vim.keymap.set("i", "<C-S-h>", "<C-o>b", { desc = "Jumps words backforward" })
-- vim.keymap.set("i", "<C-S-l>", "<C-o>w", { desc = "Jumps words forward" })
vim.keymap.set("i", "jk", "<Esc>", { noremap = false })

vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "<C-a>", "ggVG")

-- greatest remap ever
vim.keymap.set("x", "<leader>p", [["_dP]])

-- next greatest remap ever : asbjornHaland
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])
