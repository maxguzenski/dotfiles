return {
  "saghen/blink.cmp",
  opts = {
    keymap = {
      preset = "enter",

      ["<Tab>"] = { "select_next", "fallback" },
      ["<S-Tab>"] = { "select_prev", "fallback" },

      ["<C-n>"] = { "snippet_forward", "fallback_to_mappings" },
      ["<C-p>"] = { "snippet_backward", "fallback_to_mappings" },
    },
    completion = {
      list = { selection = { preselect = false, auto_insert = false } },
    },
    -- sources = {
    --   default = { "lsp", "codecompanion", "path", "snippets", "buffer" },
    -- },
  }, -- default, super-tab
}
