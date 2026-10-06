return {
  "folke/snacks.nvim",
  priority = 1000,
  lazy = false,
  -- Inside tmux the XTVERSION query is answered by tmux, so snacks never
  -- learns the outer terminal is Ghostty and falls back to no images.
  -- SNACKS_GHOSTTY is snacks' documented override for exactly this case.
  init = function()
    vim.env.SNACKS_GHOSTTY = "true"
  end,
  ---@type snacks.Config
  opts = {
    -- your configuration comes here
    -- or leave it empty to use the default settings
    -- refer to the configuration section below
    bigfile = { enabled = true },
    dashboard = { enabled = true },
    explorer = { enabled = true },
    image = {
      enabled = true,
      resolve = function(path, src)
        local api = require("obsidian.api")
        if api.path_is_note(path) then
          return api.resolve_attachment_path(src)
        end
      end,
    },
    indent = { enabled = true },
    input = { enabled = true },
    picker = { enabled = true },
    notifier = { enabled = true },
    quickfile = { enabled = true },
    scope = { enabled = true },
    scroll = { enabled = true },
    statuscolumn = { enabled = true },
    words = { enabled = true },
  },
}
