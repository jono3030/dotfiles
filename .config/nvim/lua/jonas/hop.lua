local status_ok, hop = pcall(require, "hop")
if not status_ok then
  return
end

local opts = { noremap = true, silent = true }
local keymap = vim.api.nvim_set_keymap

-- normal mode (easymotion-like)
keymap("n", "<Leader><Leader>k", ":HopWordBC<CR>", opts)
keymap("n", "<Leader><Leader>j", ":HopWordAC<CR>", opts)
keymap("n", "<Leader><Leader>h", ":HopWordCurrentLineBC<CR>", opts)
keymap("n", "<Leader><Leader>l", ":HopWordCurrentLineAC<CR>", opts)

-- visual mode (easymotion-like)
keymap("v", "<Leader><Leader>k", ":HopWordBC<CR>", opts)
keymap("v", "<Leader><Leader>j", ":HopWordAC<CR>", opts)
keymap("v", "<Leader><Leader>h", ":HopWordCurrentLineBC<CR>", opts)
keymap("v", "<Leader><Leader>l", ":HopWordCurrentLineAC<CR>", opts)

hop.setup{}
