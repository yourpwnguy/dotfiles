-- This file needs to have same structure as nvconfig.lua
-- https://github.com/NvChad/ui/blob/v3.0/lua/nvconfig.lua
-- Please read that file to know all available options :(

---@type ChadrcConfig
local M = {}

M.base46 = {
  theme = "tokyonight",
  transparency = true,
  hl_override = {
    ["@comment"] = { italic = true },
    ["@variable"] = { italic = true },
    ["@boolean"] = { italic = true },
    ["@property"] = { italic = true },
    ["@keyword"] = { italic = true },
    ["@keyword.return"] = { italic = true },
    ["@keyword.function"] = { italic = true },
    ["@constant.builtin"] = { italic = true },
    WinSeparator = {
      -- bg = "NONE",
      fg = "#24283b",
      -- sp = "pink",
    },
    NvimTreeWinSeparator = {
      fg = "one_bg",
    },
  },
}

M.term = {
  float = {
    border = "rounded",
  },
}
-- M.nvdash = { load_on_startup = true }
M.ui = {
  tabufline = {
    enabled = true,
    lazyload = true,
  },
}

return M
