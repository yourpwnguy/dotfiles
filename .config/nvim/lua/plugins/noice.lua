return { -- lazy.nvim
  "folke/noice.nvim",
  event = "VeryLazy",
  -- The 'opts' table below is for lazy.nvim itself.
  -- This is where you put options that 'lazy.nvim' uses to load the plugin.
  -- For noice.nvim's *internal* options, use the `config` function.
  opts = {
    -- add any options here that lazy.nvim should pass to noice.nvim's setup,
    -- or if you prefer to define them directly in the config function, you can leave this empty.
  },
  dependencies = {
    -- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
    "MunifTanjim/nui.nvim",
    -- OPTIONAL:
    --   `nvim-notify` is only needed, if you want to use the notification view.
    --   If not available, we use `mini` as the fallback
    "rcarriga/nvim-notify",
  },
  config = function()
    -- This 'config' function is where you call the plugin's `setup` function
    -- and pass its internal configuration options.
    require("noice").setup {
      lsp = {
        -- override markdown rendering so that **cmp** and other plugins use **Treesitter**
        override = {
          ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
          ["vim.lsp.util.stylize_markdown"] = true,
          ["cmp.entry.get_documentation"] = true, -- requires hrsh7th/nvim-cmp
        },
        signature = {
          enabled = false,
          border = {
            style = "rounded",
            padding = { 0, 1 },
          },
          auto_open = {
            enabled = false,
          },
        },
      },
      keys = {
        -- Map <Esc> to dismiss all visible Noice messages
        { "leader<Esc>", "<cmd>Noice dismiss<CR>", mode = { "n", "i", "v" }, desc = "Dismiss Noice messages" },

        -- You could also add a more specific keymap if you want, e.g., <leader>dn for Dismiss Noice
        -- { "<leader>dn", "<cmd>Noice dismiss<CR>", desc = "Dismiss Noice messages" },

        -- If you want to clear hlsearch as well, you can chain commands:
        -- { "<Esc>", "<cmd>Noice dismiss | :noh<CR>", mode = { "n", "i", "v" }, desc = "Dismiss Noice messages and clear highlight" },
      },
      format = {
        cmdline = { pattern = ":", icon = "<", lang = "vim" },
      },
      -- you can enable a preset for easier configuration
      presets = {
        -- bottom_search = true, -- use a classic bottom cmdline for search
        -- command_palette = true, -- position the cmdline and popupmenu together
        -- long_message_to_split = true, -- long messages will be sent to a split
        -- inc_rename = false, -- enables an input dialog for inc-rename.nvim
        lsp_doc_border = true, -- add a border to hover docs and signature help
      },
    } -- No comma here after the closing parenthesis for setup()
  end,
}
