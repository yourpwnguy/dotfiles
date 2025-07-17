return {
  {
    "nvim-telescope/telescope-media-files.nvim",
    dependencies = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" },
    ft = { "png", "jpg", "mp4", "pdf" }, -- lazy-load on media filetypes, tweak as needed
    config = function()
      require("telescope").load_extension "media_files"
    end,
  },
}
