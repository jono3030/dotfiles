require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

-- map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

map("n", "<leader>db", "<cmd>DapToggleBreakpoint<CR>", { desc = "Add breakpoint at line" })
map("n", "<leader>dr", "<cmd>DapContinue<CR>", { desc = "Start or continue the debugger" })

-- local dap_mappings = {
--   n = {
--     ["<leader>db"] = {
--       "<cmd>DapToggleBreakpoint<CR>",
--       "Add breakpoint at line",
--     },
--     ["<leader>dr"] = {
--       "<cmd>DapContinue<CR>",
--       "Start or continue the debugger",
--     },
--   },
-- }
