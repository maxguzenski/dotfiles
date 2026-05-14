return {
  "christoomey/vim-tmux-navigator",
  lazy = false,
  init = function()
    vim.g.tmux_navigator_no_mappings = 1
  end,
  keys = {
    { "<C-h>", "<cmd>TmuxNavigateLeft<cr>", desc = "Tmux/Window Left" },
    { "<C-j>", "<cmd>TmuxNavigateDown<cr>", desc = "Tmux/Window Down" },
    { "<C-k>", "<cmd>TmuxNavigateUp<cr>", desc = "Tmux/Window Up" },
    { "<C-l>", "<cmd>TmuxNavigateRight<cr>", desc = "Tmux/Window Right" },
  },
}
