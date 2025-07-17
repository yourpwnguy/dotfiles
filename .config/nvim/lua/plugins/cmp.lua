-- lua/custom/plugins/cmp.lua

-- Define the highlight group first
-- vim.cmd "highlight! BorderBG guibg=None guifg=#7AA2F7"
vim.cmd "highlight! BorderBG guibg=None guifg=#40486A"

return {
  "hrsh7th/nvim-cmp",
  opts = function(_, opts)
    opts.window = {
      completion = {
        border = "rounded",
        winhighlight = "Normal:Normal,FloatBorder:BorderBG,CursorLine:PmenuSel,Search:None",
      },
      documentation = {
        border = "rounded",
        -- It's good practice to set winhighlight for documentation too
        winhighlight = "Normal:Normal,FloatBorder:BorderBG,CursorLine:PmenuSel,Search:None",
      },
      -- signature = {
      --   border = "rounded",
      --   winhighlight = "Normal:Normal,FloatBorder:BorderBG,CursorLine:PmenuSel,Search:None",
      -- },
    }
  end,
}
