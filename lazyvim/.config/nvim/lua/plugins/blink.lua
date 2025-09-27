return {
  "saghen/blink.cmp",
  opts = {
    keymap = {
      -- preset = "super-tab",
      preset = "enter",

      ["<Tab>"] = { "select_next", "fallback" },
      ["<S-Tab>"] = { "select_prev", "fallback" },

      ["<C-n>"] = { "snippet_forward", "fallback_to_mappings" },
      ["<C-p>"] = { "snippet_backward", "fallback_to_mappings" },
    },
    completion = {
      list = { selection = { preselect = false, auto_insert = false } },
      ghost_text = { enabled = false },
    },
  }, -- default, super-tab
}
