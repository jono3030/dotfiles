-- [[ options.lua ]]
-- Setting options with for loop
local options = {

  -- [[ Context ]]
  colorcolumn = '80',           -- str:  Show col for max line length
  number = true,                -- bool: Show line numbers
  relativenumber = true,        -- bool: Show relative line numbers
  scrolloff = 8,                -- int:  Keep n lines below and above cursor

-- [[ Search ]]
  incsearch = true,             -- bool: Incremental search moves highlight as characters are added
  hlsearch = true,              -- bool: Highlight search matches
}

-- Looping over value pairs of "options" dictionary
for k, v in pairs(options) do
  vim.opt[k] = v
end

-- [[ options.lua ]]
-- Setting options with for loop
-- local options = {
--   -- [[ Context ]]
--   -- backupdir = '/home/jonas/.local/state/nvim/backup', -- Set backup location for files being edited
--   colorcolumn = '80',           -- str:  Show col for max line length
--   number = true,                -- bool: Show line numbers
--   relativenumber = true,        -- bool: Show relative line numbers
--   scrolloff = 8,                -- int:  Keep n lines below and above cursor
--   ruler = true,                 -- bool: Displays line, column and virtual column numbers as well as the relative position of the cursor
--   mouse = 'a',                  -- str:  Enables mouse in Neovim
--   title = true,                 -- bool: Enable custom title screen
--   history = 1000,               -- int:  Expands undo history
--   hidden = true,                -- bool: Allows files to stay open in buffer
--   cmdheight = 2, 		            -- int:  Set space in Neovim command line for displaying messages
--   clipboard = { "unnamed", "unnamedplus" },    -- str: Activates clipboard register '*'
--   completeopt = { "menuone", "noselect" },	-- str: Options for insert mode completion. Also for 'cmp'?
--   conceallevel = 0,             -- int: Makes `` visible in Markdown files
--   --opt.pumheight = 10,           -- int: Height of pop-up menu. 0 means "use available screen space".
--   showtabline = 2,              -- int:  Display tab page labels
--   --opt.undodir = ".",            -- str:  Directory where undofile is stored
--   undofile = true,              -- bool: Enable persistent undo. Also check 'undodir'.
--   updatetime = 300,             -- int:  Faster completion (4000ms default)
--   cursorline = true,            -- bool: Highlight the text line of cursor/current line
--   cursorlineopt = "both",       -- str:  How is cursorline displayed. Display only number with "number".
--   numberwidth = 2,              -- int:  Set column width of number
--   signcolumn = "yes",           -- str:  Always show sign column. Otherwise it would shift the text each time.
--   wrap = false,                 -- bool: Don't wrap lines
--
--   -- [[ Filetypes ]]
--   encoding = 'utf8',            -- str:  String encoding to use
--   fileencoding = 'utf8',        -- str:  File encoding to use
--
--   -- [[ Theme ]]
--   syntax = "ON",                -- str:  Allow syntax highlighting
--   termguicolors = true,         -- bool: If term supports ui color then enable
--
--   -- [[ Search ]]
--   ignorecase = true,            -- bool: Ignore case in search patterns
--   smartcase = true,             -- bool: Override ignorecase if search contains capitals
--   incsearch = true,             -- bool: Incremental search moves highlight as characters are added
--   hlsearch = true,              -- bool: Highlight search matches
--
--   -- [[ Whitespace ]]
--   expandtab = true,             -- bool: Use spaces instead of tabs. Converts tabs to spaces.
--   shiftwidth = 2,               -- num:  Size of an indent
--   softtabstop = 2,              -- num:  Number of spaces tabs count for in insert mode
--   tabstop = 2,                  -- num:  Sets length for each tabstop
--   smarttab = true,              -- bool: Only meanigful if both expandtab and softtabstop differ from shiftwidth
--   smartindent = true,           -- bool: Tries to detect how code should be indented
--
--   -- [[ Splits ]]
--   splitright = true,            -- bool: Place new window to right of current one
--   splitbelow = true,            -- bool: Place new window below the current one
-- }
--
-- -- Looping over value pairs of "options" dictionary
-- for k, v in pairs(options) do
--   vim.opt[k] = v
-- end
