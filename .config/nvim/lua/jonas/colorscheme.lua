-- Set persistent colorscheme here
local colorscheme = "nightfox"

-- Prevent Neovim config from breaking if colorscheme is not present
local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
  vim.notify("colorscheme " .. colorscheme .. " not found! Install or change theme using colorscheme.lua!")
  return
end
