local M = {}

-- -- In order to disable a default keymap, use
-- M.disabled = {
--   n = {
--       ["<leader>h"] = "",
--       ["<C-a>"] = ""
--   }
-- }

-- Your custom mappings
M.general = {

  i = {
     ["jk"] = { "<ESC>", "escape insert mode" , opts = { nowait = true }},
  },

  v = {
     ["<"] = { "<gv", "Stay in indent mode left" , opts = { nowait = true }},
     [">"] = { ">gv", "Stay in indent mode right" , opts = { nowait = true }},

     ["J"] = { ":move '>+1<CR>gv-gv", "Move highlighted down" , opts = { nowait = true }},
     ["K"] = { ":move '<-2<CR>gv-gv", "Move highlighted up" , opts = { nowait = true }},
  },

}

return M

