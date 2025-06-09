require("gitsigns").setup({
  current_line_blame = false,
  -- other options...
})

-- Keymaps
vim.keymap.set("n", "<leader>gb", function()
  require("gitsigns").blame_line()
end, { noremap = true, silent = true, desc = "toggle Git blame overlay for current line" })
vim.keymap.set("n", "<leader>gi", function()
  require("gitsigns").toggle_current_line_blame()
end, { desc = "toggle inline Git blame" })
