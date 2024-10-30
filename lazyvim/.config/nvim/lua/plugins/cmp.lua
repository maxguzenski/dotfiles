-- local function has_words_before()
--   local line, col = (unpack or table.unpack)(vim.api.nvim_win_get_cursor(0))
--   return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match("%s") == nil
-- end
--
-- local function is_visible(cmp)
--   return cmp.core.view:visible() or vim.fn.pumvisible() == 1
-- end

return {
  {
    "hrsh7th/nvim-cmp",
    -- opts = {
    --   preselect = false,
    --   completion = { completeopt = "menu,menuone,noinsert,noselect" },
    --   experimental = { ghost_text = false },
    -- },
    opts = function(_, opts)
      local cmp = require("cmp")
      opts.preselect = false
      opts.completion = { completeopt = "menu,menuone,noinsert,noselect" }
      opts.experimental = { ghost_text = false }

      opts.mapping = vim.tbl_deep_extend("force", opts.mapping, {
        ["<C-Space>"] = cmp.mapping.complete(),
        ["<CR>"] = cmp.mapping(function(fallback)
          if cmp.visible() and cmp.get_selected_entry() then
            cmp.confirm({ select = false })
          else
            cmp.close()
            fallback()
          end
        end, { "i", "s" }),
        -- ["<Tab>"] = cmp.mapping(function(fallback)
        --   if is_visible(cmp) then
        --     cmp.select_next_item()
        --   elseif vim.api.nvim_get_mode().mode ~= "c" and vim.snippet and vim.snippet.active({ direction = 1 }) then
        --     vim.schedule(function()
        --       vim.snippet.jump(1)
        --     end)
        --   elseif has_words_before() then
        --     cmp.complete()
        --   else
        --     fallback()
        --   end
        -- end, { "i", "s" }),
        -- ["<S-Tab>"] = cmp.mapping(function(fallback)
        --   if is_visible(cmp) then
        --     cmp.select_prev_item()
        --   elseif vim.api.nvim_get_mode().mode ~= "c" and vim.snippet and vim.snippet.active({ direction = -1 }) then
        --     vim.schedule(function()
        --       vim.snippet.jump(-1)
        --     end)
        --   else
        --     fallback()
        --   end
        -- end, { "i", "s" }),
      })
      -- opts.mapping = vim.tbl_deep_extend("force", opts.mapping, {
      --   ["<CR>"] = function(fallback)
      --     cmp.abort()
      --     fallback()
      --   end,
      -- })
      --
      return opts
    end,
  },
}
