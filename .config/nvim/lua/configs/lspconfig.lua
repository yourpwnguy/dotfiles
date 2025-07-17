require("nvchad.configs.lspconfig").defaults()

local servers = {
  "nvim-navic",
  "ts_ls",
  "tailwindcss",
  "eslint",
  "html",
  "emmet_ls",
  "cssls",
  "clangd",
  "cmake",
  "gopls",
  "pyright",
  "marksman",
}
vim.lsp.enable(servers)
