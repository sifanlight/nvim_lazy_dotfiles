return {
  "OXY2DEV/markview.nvim",
  lazy = false, -- recommended by the plugin: it handles lazy loading itself
  priority = 49, -- load after colorschemes but before other filetype plugins
  dependencies = { "nvim-treesitter/nvim-treesitter" },
  opts = {
    preview = {
      filetypes = { "markdown", "codecompanion", "Avante" },
      ignore_buftypes = {},
    },
  },
}
