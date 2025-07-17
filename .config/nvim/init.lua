vim.g.base46_cache = vim.fn.stdpath "data" .. "/base46/"

vim.g.mapleader = " "

-- bootstrap lazy and all plugins
local lazypath = vim.fn.stdpath "data" .. "/lazy/lazy.nvim"

if not vim.uv.fs_stat(lazypath) then
  local repo = "https://github.com/folke/lazy.nvim.git"
  vim.fn.system { "git", "clone", "--filter=blob:none", repo, "--branch=stable", lazypath }
end

vim.opt.rtp:prepend(lazypath)

local lazy_config = require "configs.lazy"

-- load plugins
require("lazy").setup({
  {
    "NvChad/NvChad",
    lazy = false,
    branch = "v2.5",
    import = "nvchad.plugins",
  },

  { import = "plugins" },
}, lazy_config)

-- load theme
dofile(vim.g.base46_cache .. "defaults")
dofile(vim.g.base46_cache .. "statusline")

require "options"
require "nvchad.autocmds"
-- require "core.autoread"

vim.schedule(function()
  require "mappings"
end)

if vim.g.neovide then
  -- vim.o.guifont = "Maple Mono NF"
  vim.opt.linespace = 10
  vim.g.neovide_padding_top = 20
  vim.g.neovide_padding_bottom = 0
  vim.g.neovide_scale_factor = 1.0
  vim.g.neovide_padding_right = 20
  vim.g.neovide_padding_left = 20
  vim.g.neovide_opacity = 0.9
  vim.g.neovide_normal_opacity = 1
end
