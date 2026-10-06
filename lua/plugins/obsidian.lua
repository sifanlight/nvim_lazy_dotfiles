return {
  "obsidian-nvim/obsidian.nvim",
  version = "*", -- use latest release, remove to use latest commit
  ---@module 'obsidian'
  ---@type obsidian.config
  opts = {
    legacy_commands = false, -- this will be removed in 4.0.0
    -- markview.nvim renders markdown; disable obsidian's own UI to avoid conflicts
    ui = { enable = false },
    workspaces = {
      {
        name = "Diffusion",
        path = "/home/sina/University/diffusion_opcm/Notes"
      },
	  {
		name = "Book_Photonic",
		path = "/home/sina/University/Photonic_design/notes"
	  },
    },
  },
}
