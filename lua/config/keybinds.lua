vim.g.mapleader = " "
vim.keymap.set("n", "<leader>cd", vim.cmd.Ex)

-- VSCode-like Keybindings
local map = vim.keymap.set

-- Save file
map({"n", "i", "v"}, "<C-s>", "<cmd>w<cr><esc>", { desc = "Save file" })

-- Toggle Explorer / Sidebar
map("n", "<C-b>", "<cmd>Neotree toggle<cr>", { desc = "Toggle Explorer" })

-- Quick Open / Find Files
map("n", "<C-p>", "<cmd>Telescope find_files<cr>", { desc = "Quick Open" })

-- Find in Files / Search
map("n", "<C-f>", "<cmd>Telescope live_grep<cr>", { desc = "Find in Files" })

-- Close Buffer (similar to Close Editor)
map("n", "<C-w>", "<Plug>vem_delete_buffer-", { silent = true, remap = true, desc = "Close Buffer" })

-- Formatting (VSCode Option+Shift+F or Shift+Alt+F)
map("n", "<leader>F", vim.lsp.buf.format, { desc = "Format Document" })

-- Window Navigation (since C-w is used for closing buffers)
map("n", "<C-h>", "<C-w>h", { desc = "Move to left window" })
map("n", "<C-j>", "<C-w>j", { desc = "Move to lower window" })
map("n", "<C-k>", "<C-w>k", { desc = "Move to upper window" })
map("n", "<C-l>", "<C-w>l", { desc = "Move to right window" })
