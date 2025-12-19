-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })

vim.keymap.set("n", "<leader>F", LazyVim.pick("files", { root = false }), { desc = "Find Files (cwd)" })

vim.keymap.set("i", "jk", "<Esc>", { noremap = false })
-- vim.keymap.set("i", "fd", "<Esc>:w<Enter>", { noremap = false })

-- vertical scroll and center
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- select all buffer
-- vim.keymap.set("n", "<C-a>", "ggVG")

-- greatest remap ever
-- cola sem sobrescrever o registro
vim.keymap.set("x", "<leader>p", [["_dP]])

-- delete single character without copying into register
vim.keymap.set("n", "x", [["_x]])

vim.keymap.set("n", "<leader>ghP", ":Gitsigns preview_hunk<CR>", { desc = "Preview Hunk" })
-- wicth buffer
-- vim.keymap.set("n", "<S-h>", ":bprevious<CR>")
-- vim.keymap.set("n", "<S-l>", ":bnext<CR>")

-- move selected text up and down
-- ALREADY setted with <M-J> <M-K>
-- vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
-- vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- next greatest remap ever
-- vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
-- vim.keymap.set("n", "<leader>Y", [["+Y]])

-- vim.keymap.set({ "n", "x" }, "<leader>a", "", { desc = "openAI" })
-- vim.keymap.set({ "n", "x" }, "<leader>ai", "<CMD>CodeCompanion<Cr>", { desc = "Inline chat" })
-- vim.keymap.set({ "n", "x" }, "<leader>ac", "<CMD>CodeCompanionChat Toggle<Cr>", { desc = "Chat" })
-- vim.keymap.set({ "n", "x" }, "<leader>aa", "<CMD>CodeCompanionActions<Cr>", { desc = "Actions" })
