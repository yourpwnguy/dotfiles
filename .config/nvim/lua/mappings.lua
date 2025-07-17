require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

-- map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
map("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "LSP Code Action" })
-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
map("n", "<leader>z", vim.diagnostic.open_float, { desc = "Open Diagnostic Window" })

map("n", "<leader>q", ":bd<CR>", { desc = "Close current window" })
map("n", "<leader>nn", ":ASToggle<CR>", { desc = "Toggle autosave" })
map("n", "<space><space>", ":e!<CR>", { desc = "Force reload file" })

vim.keymap.set({ "n", "v" }, "<leader>st", require("stay-centered").toggle, { desc = "Toggle stay-centered.nvim" })

local bufnr = vim.api.nvim_get_current_buf()
vim.keymap.set("n", "<leader>ca", function()
  vim.cmd.RustLsp "codeAction" -- supports rust-analyzer's grouping
  -- or vim.lsp.buf.codeAction() if you don't want grouping.
end, { silent = true, buffer = bufnr })

vim.keymap.set(
  "n",
  "K", -- Override Neovim's built-in hover keymap with rustaceanvim's hover actions
  function()
    vim.cmd.RustLsp { "hover", "actions" }
  end,
  { silent = true, buffer = bufnr }
)

vim.keymap.set("n", "<leader><ESC>", function()
  require("noice").cmd "dismiss"
end)
