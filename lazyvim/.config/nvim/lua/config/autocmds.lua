-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

-- OrganizeImports on save
vim.api.nvim_create_autocmd("BufWritePre", {
  group = vim.api.nvim_create_augroup("TS_add_missing_imports", { clear = true }),
  pattern = { "*.ts", "*.js", "*.svelte", "*.svelte.js", "*.jsx" },
  callback = function()
    -- vim.lsp.buf.code_action({ apply = true, context = { only = { "source.addMissingImports.ts" }, diagnostics = {} } })
    -- vim.lsp.buf.code_action({ apply = true, context = { only = { "source.removeUnused.ts" }, diagnostics = {} } })
    -- vim.lsp.buf.code_action({ apply = true, context = { only = { "source.addMissingImports" }, diagnostics = {} } })
    vim.lsp.buf.code_action({ apply = true, context = { only = { "source.organizeImports" }, diagnostics = {} } })
  end,
})

-- disable spellcheck
-- use "set spell" to enable
vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")

--
-- Fix indent line using Snacks.vim
--
local function setup_indent_colors()
  vim.api.nvim_set_hl(0, "SnacksIndent", { fg = "#2d324a" })
  vim.api.nvim_set_hl(0, "SnacksIndentScope", { fg = "#3b4261" })
end

vim.api.nvim_create_autocmd("ColorScheme", {
  callback = setup_indent_colors,
  pattern = "catppuccin-macchiato",
})

setup_indent_colors()
