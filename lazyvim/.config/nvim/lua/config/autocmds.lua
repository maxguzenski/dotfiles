-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

-- OrganizeImports on save
-- vim.api.nvim_create_autocmd("BufWritePre", {
--   group = vim.api.nvim_create_augroup("LspOrganizeImports", { clear = true }),
--   pattern = "*.js,*.jsx,*.ts,*.tsx,*.svelte,*.svelte.js", -- Apply to relevant file types
--   callback = function()
--     vim.lsp.buf.code_action({ apply = true, context = { only = { "source.organizeImports" }, diagnostics = {} } })
--   end,
-- })

-- disable spellcheck
-- use "set spell" to enable
vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")

--
-- Fix indent line using Snacks.vim
--
local function setup_indent_colors()
  vim.opt.cursorline = false
  vim.api.nvim_set_hl(0, "SnacksIndent", { fg = "#2d324a" })
  vim.api.nvim_set_hl(0, "SnacksIndentScope", { fg = "#3b4261" })
end

vim.api.nvim_create_autocmd("ColorScheme", {
  callback = setup_indent_colors,
  pattern = "*",
})

setup_indent_colors()

--
-- other
--
vim.filetype.add({
  extension = { svx = "markdown" },
})
