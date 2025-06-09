require "nvchad.mappings"

-- custom/remaps.lua
local map = vim.keymap.set
local opts = { noremap = true, silent = true }

-- Fast escape from insert mode
map("i", "jk", "<Esc>", opts)

-- Telescope
-- map("n", "<leader>ff", "<cmd>Telescope find_files<CR>", opts)
-- map("n", "<leader>fg", "<cmd>Telescope live_grep<CR>", opts)

local telescope_builtin = require("telescope.builtin")

vim.keymap.set("n", "<leader>fr", "<cmd>Telescope resume<CR>", vim.tbl_extend("force", opts, { desc = "Resume last Telescope picker" }))

vim.keymap.set("n", "<leader>fs", function()
  telescope_builtin.lsp_document_symbols()
end, vim.tbl_extend("force", opts, { desc = "Find LSP document symbols in current buffer" }))

vim.keymap.set("n", "<leader>fS", function()
  telescope_builtin.lsp_workspace_symbols()
end, vim.tbl_extend("force", opts, { desc = "Find LSP workspace symbols in project" }))

vim.keymap.set("n", "<leader>fc", function()
  telescope_builtin.registers({
    prompt_title = "Registers",
  })
end, vim.tbl_extend("force", opts, { desc = "Show and paste registers" }))

-- Gitsigns
map("n", "<leader>gb", function()
  require("gitsigns").blame_line()
end, vim.tbl_extend("force", opts, { desc = "Toggle Git blame overlay for current line" }))

map("n", "<leader>gi", function()
  require("gitsigns").toggle_current_line_blame()
end, vim.tbl_extend("force", opts, { desc = "Toggle inline Git blame" }))

-- More key mappings here
-- Save file with Ctrl-s
-- map("n", "<C-s>", ":w<CR>", opts)

-- Reload config
-- map("n", "<leader>r", ":source $MYVIMRC<CR>", opts)
