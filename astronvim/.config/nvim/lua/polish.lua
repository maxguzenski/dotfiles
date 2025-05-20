-- This will run last in the setup process.
-- This is just pure lua so anything that doesn't
-- fit in the normal config locations above can go here

local function setup_indent_colors()
  vim.api.nvim_set_hl(0, "SnacksIndent", { fg = "#2d324a" })
  vim.api.nvim_set_hl(0, "SnacksIndentScope", { fg = "#3b4261" })
end

-- Configura após carregar o tema
vim.api.nvim_create_autocmd("ColorScheme", {
  -- pattern = "tokyonight-moon",
  callback = setup_indent_colors,
})

-- vim.api.nvim_create_autocmd("ColorScheme", {
--   pattern = "catppuccin-macchiato",
--   callback = setup_indent_colors,
-- })

-- Caso o tema já esteja carregado quando o script roda
-- if vim.g.colors_name == "tokyonight-moon" then setup_indent_colors() end
-- if vim.g.colors_name == "catppuccin-macchiato" then setup_indent_colors() end
setup_indent_colors()

vim.opt.cursorline = false
vim.opt.signcolumn = "yes:2"

vim.keymap.set("i", "<C-s>", "<Esc><cmd>w<Cr>")
