return {
  "folke/trouble.nvim",
  opts = {
    -- indent_guides = false,
    win = {
      type = "split", -- split window
      relative = "win", -- relative to current window
      position = "right", -- right side
      size = 70, -- 30% of the window
      wo = {
        wrap = true,
      },
    },

    -- modes = {
    --   symbols = { -- Configure symbols mode
    --     win = {
    --       type = "split", -- split window
    --       relative = "win", -- relative to current window
    --       position = "right", -- right side
    --       size = 0.3, -- 30% of the window
    --     },
    --   },
    --   lsp_base = { -- Configure symbols mode
    --     win = {
    --       type = "split", -- split window
    --       relative = "win", -- relative to current window
    --       position = "right", -- right side
    --       size = 0.8, -- 30% of the window
    --     },
    --   },
    -- },
    -- auto_close = true,
    -- auto_open = true,
  }, -- for default options, refer to the configuration section for custom setup.
  cmd = "Trouble",
  keys = {
    {
      "<leader>xx",
      "<cmd>Trouble diagnostics toggle<cr>",
      desc = "Diagnostics (Trouble)",
    },
    {
      "<leader>xX",
      "<cmd>Trouble diagnostics toggle filter.buf=0<cr>",
      desc = "Buffer Diagnostics (Trouble)",
    },
    {
      "<leader>cs",
      "<cmd>Trouble symbols toggle focus=false<cr>",
      desc = "Symbols (Trouble)",
    },
    {
      "<leader>cl",
      "<cmd>Trouble lsp toggle focus=false win.position=right<cr>",
      desc = "LSP Definitions / references / ... (Trouble)",
    },
    {
      "<leader>xL",
      "<cmd>Trouble loclist toggle<cr>",
      desc = "Location List (Trouble)",
    },
    {
      "<leader>cQ",
      "<cmd>Trouble qflist toggle<cr>",
      desc = "Quickfix List (Trouble)",
    },
  },
}
