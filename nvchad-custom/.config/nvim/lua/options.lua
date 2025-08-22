-- Set Neovim options here to override NVChad defaults
require "nvchad.options"

local options = {
-- [[ Context ]]
colorcolumn = "88",
number = true,
relativenumber = true,
scrolloff = 8,

-- [[ Search ]]
incsearch = true,
hlsearch = true,
}

-- Apply all options
for k, v in pairs(options) do
 vim.opt[k] = v
end

-- Optional: Add remaps, autocmds, or require custom modules here
-- require("custom.mappings")
-- Example:
-- require("custom.autocmds")
