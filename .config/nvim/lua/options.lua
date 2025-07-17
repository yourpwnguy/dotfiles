require "nvchad.options"

-- add yours here!

local o = vim.o
local g = vim.g
-- o.guicursor = "n-v-c-i:block"
o.smoothscroll = true
g.rust_recommended_style = 0
-- o.tabstop = 2
-- o.shiftwidth = 2
-- o.shell = "pwsh.exe"
-- o.cursorlineopt = "both" -- to enable cursorline!
--
-- vim.opt.spell = false -- Spellcheck off by default
-- vim.opt.spelllang = { "en" }
vim.opt.listchars:append { tab = "»-" }
vim.opt.listchars:append { trail = "·" }
vim.opt.listchars:append { extends = "»" }
vim.opt.listchars:append { precedes = "«" }
vim.opt.fillchars:append { eob = " ", fold = " ", foldsep = " ", foldopen = "", foldclose = "" }
vim.api.nvim_set_hl(0, "Cursor", { bg = "#ff69b4", fg = "NONE" })
vim.api.nvim_set_hl(0, "FloatBorder", { fg = "#40486A", bg = "NONE" })
-- vim.diagnostic.config {
--   -- virtual_text = true,
--   float = {
--     header = "",
--     border = "rounded",
--     focusable = true,
--   },
-- }
vim.opt.guicursor = {
  "n-v-c:block-Cursor/lCursor-blinkwait500-blinkon250-blinkoff250",
  "i-ci-ve:block-Cursor/lCursor-blinkwait500-blinkon250-blinkoff250",
  "r-cr:block-Cursor/lCursor-blinkwait500-blinkon250-blinkoff250",
  "o:block-Cursor/lCursor-blinkwait500-blinkon250-blinkoff250",
}

-- vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(vim.lsp.handlers.hover, { border = "rounded" })

-- vim.lsp.handlers["textDocument/signatureHelp"] = vim.lsp.with(vim.lsp.handlers.signature_help, { border = "rounded" })
-- vim.opt.fillchars:append {
--   vert = " ",
--   horiz = " ",
--   horizup = " ",
--   horizdown = " ",
--   vertleft = " ",
--   vertright = " ",
--   verthoriz = " ",
-- }
vim.o.foldenable = true -- Enable code folding
