require("venv-selector").setup({
  search = {},
  options = {},
})

-- Keymap (Normal mode)
vim.keymap.set("n", "<leader>l", "<cmd>VenvSelect<cr>", {
  desc = "Select Python venv",
  silent = true,
})
