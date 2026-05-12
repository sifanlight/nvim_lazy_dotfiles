return {
    {
        "folke/tokyonight.nvim",
        lazy = false,
        priority = 1000,
        opts = {
            style = "night",
            on_highlights = function(hl, c)
                hl.Normal = { bg = "#000000" }
                hl.NormalNC = { bg = "#000000" }
                hl.NormalFloat = { bg = "#000000" }
                hl.FloatBorder = { bg = "#000000" }
                hl.LineNr = { bg = "#000000" }
                hl.CursorLineNr = { bg = "#000000" }
                hl.NeoTreeNormal = { bg = "#000000" }
                hl.NeoTreeNormalNC = { bg = "#000000" }
            end,
        },
        config = function(_, opts)
            require("tokyonight").setup(opts)
            vim.cmd.colorscheme "tokyonight"
        end
    },
    {
        "nvim-lualine/lualine.nvim",
        dependencies = {
            "nvim-tree/nvim-web-devicons",
        },
        opts = {
            theme = 'tokyonight',
        }
    },
}
