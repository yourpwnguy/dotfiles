return {
  {
    "stevearc/conform.nvim",
    event = "BufWritePre", -- uncomment for format on save
    opts = require "configs.conform",
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

  {
    require "plugins.surround",
  },

  {
    require "plugins.snacks",
  },

  {
    require "plugins.autosave",
  },

  {
    require "plugins.devicons",
  },
  {
    require "plugins.mason",
  },

  {
    require "plugins.nvim-tree",
  },

  {
    require "plugins.trouble",
  },

  -- {
  --   require "plugins.nvim-cmp",
  -- },
  -- {
  --   require "plugins.image",
  -- },

  {
    require "plugins.telescope_media_files",
  },

  {
    require "plugins.rustaceanvim",
  },

  -- {
  --   require "plugins.neoscroll",
  -- },

  {
    require "plugins.stay_centered",
  },

  {
    require "plugins.image_preview",
  },
  {
    require "plugins.telescope",
  },
  {
    "barrett-ruth/live-server.nvim",
    opts = require "plugins.live-server",
  },
  -- test new blink
  -- { import = "nvchad.blink.lazyspec" },
  --
  -- {
  --   "saghen/blink.cmp",
  --
  --   opts = {
  --     keymap = {
  --       preset = "default",
  --       ["<Tab>"] = { "select_next", "fallback" },
  --       ["<S-Tab>"] = { "select_prev", "fallback" },
  --     },
  --   },
  -- },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "vim",
        "lua",
        "vimdoc",
        "html",
        "css",
        "javascript",
        "typescript",
        "http",
        "scss",
        "json",
        "rust",
        "cpp",
        "go",
        "c",
      },
    },
  },
}
