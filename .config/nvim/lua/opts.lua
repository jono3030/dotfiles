-- [[ opts.lua ]]
-- Local variable for easier setting op options
local opt = vim.opt

-- [[ Context ]]
opt.colorcolumn = '80'           -- str:  Show col for max line length
opt.number = true                -- bool: Show line numbers
opt.relativenumber = true        -- bool: Show relative line numbers
opt.scrolloff = 8                -- int:  Keep n lines below and above cursor
opt.signcolumn = "yes"           -- str:  Show the sign column
opt.ruler = true                 -- bool: Displays line, column and virtual column numbers as well as the relative position of the cursor 
opt.mouse='a'                    -- str:  Enables mouse in Neovim
opt.title=true                   -- bool: Enable custom title screen
opt.history=1000                 -- int:  Expands undo history
opt.hidden=true                  -- bool: Not sure what hidden does but has to do with buffers...FIND OUT!!!

-- [[ Filetypes ]]
opt.encoding = 'utf8'            -- str:  String encoding to use
opt.fileencoding = 'utf8'        -- str:  File encoding to use

-- [[ Theme ]]
opt.syntax = "ON"                -- str:  Allow syntax highlighting
opt.termguicolors = true         -- bool: If term supports ui color then enable

-- [[ Search ]]
opt.ignorecase = true            -- bool: Ignore case in search patterns
opt.smartcase = true             -- bool: Override ignorecase if search contains capitals
opt.incsearch = true             -- bool: Incremental search moves highlight as characters are added
opt.hlsearch = false             -- bool: Highlight search matches

-- [[ Whitespace ]]
opt.expandtab = true             -- bool: Use spaces instead of tabs
opt.shiftwidth = 4               -- num:  Size of an indent
opt.softtabstop = 4              -- num:  Number of spaces tabs count for in insert mode
opt.tabstop = 4                  -- num:  Sets length for each tabstop
opt.smarttab = true              -- bool: Only meanigful if both expandtab and softtabstop differ from shiftwidth        
opt.smartindent = true           -- bool: Tries to detect how code should be indented

-- [[ Splits ]]
opt.splitright = true            -- bool: Place new window to right of current one
opt.splitbelow = true            -- bool: Place new window below the current one

-- [[ Barbar ]]
local nvim_tree_events = require('nvim-tree.events')
local bufferline_state = require('bufferline.state')

local function get_tree_size()
  return require'nvim-tree.view'.View.width
end

nvim_tree_events.subscribe('TreeOpen', function()
  bufferline_state.set_offset(get_tree_size())
end)

nvim_tree_events.subscribe('Resize', function()
  bufferline_state.set_offset(get_tree_size())
end)

nvim_tree_events.subscribe('TreeClose', function()
  bufferline_state.set_offset(0)
end)
