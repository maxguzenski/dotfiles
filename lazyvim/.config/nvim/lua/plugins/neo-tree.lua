return {
  "nvim-neo-tree/neo-tree.nvim",
  opts = {
    filesystem = {
      filtered_items = {
        hide_dotfiles = false,
        hide_gitignored = false,
        hide_by_name = { "node_modules", ".git", ".DS_Store" },
        hide_by_pattern = { "/**/_build", "**/.elixir_ls", "**/deps", "**/.svelte-kit" },
      },
    },
  },
}
