require "nvchad.mappings"

-- custom/remaps.lua
local map = vim.keymap.set
local opts = { noremap = true, silent = true }

-- Fast escape from insert mode
map("i", "jk", "<Esc>", opts)

-- More key mappings here
-- Save file with Ctrl-s
-- map("n", "<C-s>", ":w<CR>", opts)

-- Reload config
-- map("n", "<leader>r", ":source $MYVIMRC<CR>", opts)

-- Telescope shortcuts
-- map("n", "<leader>ff", "<cmd>Telescope find_files<CR>", opts)
-- map("n", "<leader>fg", "<cmd>Telescope live_grep<CR>", opts)
