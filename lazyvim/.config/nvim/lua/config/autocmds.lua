-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

-- OrganizeImports on save
vim.api.nvim_create_autocmd("BufWritePre", {
  group = vim.api.nvim_create_augroup("LspOrganizeImports", { clear = true }),
  pattern = { "*.js", "*.jsx", "*.ts", "*.tsx", "*.svelte" },
  callback = function(ev)
    local clients = vim.lsp.get_clients({ bufnr = ev.buf })
    for _, client in ipairs(clients) do
      if client.supports_method("textDocument/codeAction") then
        local params = vim.lsp.util.make_range_params()
        params.context = { only = { "source.organizeImports" }, diagnostics = {} }

        local result = vim.lsp.buf_request_sync(ev.buf, "textDocument/codeAction", params, 1000)
        for _, res in pairs(result or {}) do
          for _, action in pairs(res.result or {}) do
            if action.edit then
              vim.lsp.util.apply_workspace_edit(action.edit, client.offset_encoding)
            elseif action.command then
              vim.lsp.buf.execute_command(action.command)
            end
          end
        end
      end
    end
  end,
})

-- disable spellcheck
-- use "set spell" to enable
vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")

--
-- Fix indent line using Snacks.vim
--
local function setup_indent_colors()
  -- vim.opt.cursorline = false
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
