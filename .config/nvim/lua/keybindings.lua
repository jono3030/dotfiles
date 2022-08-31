-- Import & assign the map() function from the utils module
local map = require("utils").map

-- Modes
--   normal_mode = "n"
--   insert_mode = "i"
--   visual_mode = "v"
--   visual_block_mode = "x"
--   term_mode = "t"
--   command_mode = "c"

-- Set leader key
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Quit insert mode using 'jk' or 'kj'
map('i', 'jk', '<ESC>', opt)
map('i', 'kj', '<ESC>', opt)

-- nvim-tree
map('n', '<leader>n', ':NvimTreeToggle<CR>', opt)
map('n', '<leader>nf', ':NvimTreeFocus<CR>', opt)

-- telescope
map('n', '<leader>ff', ':Telescope find_files<CR>', opt)
map('n', '<leader>fg', ':Telescope live_grep<CR>', opt)
map('n', '<leader>fb', ':Telescope buffers<CR>', opt)
map('n', '<leader>fh', ':Telescope help_tags<CR>', opt)

-- barbar
-- Move to previous/next
map('n', '<A-,>', '<Cmd>BufferPrevious<CR>', opt)
map('n', '<A-.>', '<Cmd>BufferNext<CR>', opt)
-- Re-order to previous/next
map('n', '<A-<>', '<Cmd>BufferMovePrevious<CR>', opt)
map('n', '<A->>', '<Cmd>BufferMoveNext<CR>', opt)
-- Goto buffer in position...
map('n', '<A-1>', '<Cmd>BufferGoto 1<CR>', opt)
map('n', '<A-2>', '<Cmd>BufferGoto 2<CR>', opt)
map('n', '<A-3>', '<Cmd>BufferGoto 3<CR>', opt)
map('n', '<A-4>', '<Cmd>BufferGoto 4<CR>', opt)
map('n', '<A-5>', '<Cmd>BufferGoto 5<CR>', opt)
map('n', '<A-6>', '<Cmd>BufferGoto 6<CR>', opt)
map('n', '<A-7>', '<Cmd>BufferGoto 7<CR>', opt)
map('n', '<A-8>', '<Cmd>BufferGoto 8<CR>', opt)
map('n', '<A-9>', '<Cmd>BufferGoto 9<CR>', opt)
map('n', '<A-0>', '<Cmd>BufferLast<CR>', opt)
-- Pin/unpin buffer
map('n', '<A-p>', '<Cmd>BufferPin<CR>', opt)
-- Close buffer
map('n', '<A-c>', '<Cmd>BufferClose<CR>', opt)
-- Wipeout buffer
--                 :BufferWipeout
-- Close commands
--                 :BufferCloseAllButCurrent
--                 :BufferCloseAllButPinned
--                 :BufferCloseAllButCurrentOrPinned
--                 :BufferCloseBuffersLeft
--                 :BufferCloseBuffersRight
-- Magic buffer-picking mode
map('n', '<leader>bp', '<Cmd>BufferPick<CR>', opt)
-- Sort automatically by...
map('n', '<leader>bb', '<Cmd>BufferOrderByBufferNumber<CR>', opt)
map('n', '<leader>bd', '<Cmd>BufferOrderByDirectory<CR>', opt)
map('n', '<leader>bl', '<Cmd>BufferOrderByLanguage<CR>', opt)
map('n', '<leader>bw', '<Cmd>BufferOrderByWindowNumber<CR>', opt)

-- Other:
-- :BarbarEnable - enables barbar (enabled by default)
-- :BarbarDisable - very bad command, should never be used

-- Hop
-- place this in one of your configuration file(s)
map('', '<leader>hc', ":HopChar1<CR>", opt)
map('', '<leader>hw', ":HopWord<CR>", opt)
map('', '<leader>hp', ":HopPattern<CR>", opt)
