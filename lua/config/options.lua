vim.opt.number = true
vim.opt.cursorline = true
vim.opt.relativenumber = true
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4

-- VSCode-like behavior
vim.opt.mouse = "a"           -- Enable mouse mode
vim.opt.signcolumn = "yes"    -- Always show the signcolumn, otherwise it would shift the text each time
vim.opt.termguicolors = true  -- True color support
vim.opt.ignorecase = true     -- Case-insensitive searching UNLESS \C or capital in search
vim.opt.smartcase = true

-- Use the system clipboard for all yank/delete/put operations
vim.opt.clipboard = "unnamedplus"
