return {
  "neovim/nvim-lspconfig",
  opts = function(_, opts)
    -- keys go here
    opts.diagnostics = {
      float = {
        border = "rounded",
      },
    }
  end,
}
