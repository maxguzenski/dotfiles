return {
  "yetone/avante.nvim",
  event = "VeryLazy",
  version = false,
  enabled = false,
  dependencies = {
    "nvim-treesitter/nvim-treesitter",
    "stevearc/dressing.nvim",
    "nvim-lua/plenary.nvim",
    "MunifTanjim/nui.nvim",
  },
  opts = {
    provider = "claude",
    claude = {
      endpoint = "https://api.anthropic.com",
      model = "claude-3-5-haiku-latest",
      temperature = 0,
      max_tokens = 4096,
    },
  },
  build = "make",
}
