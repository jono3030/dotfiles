---@type ChadrcConfig 
local M = {}

-- Colotheme
M.ui = {theme = 'nightfox'}

-- Reference to custom key mappings
M.mappings = require "custom.mappings"

-- Custom plugins
M.plugins = 'custom.plugins'

return M
