---@type ChadrcConfig
local M = {}

-- Path to overriding theme and highlights files
local highlights = require "custom.highlights"
M.ui = {
  theme = "tokyonight",
  theme_toggle = { "tokyonight", "tokyodark" },

  hl_override = highlights.override,
  hl_add = highlights.add,
}

M.plugins = "custom.plugins"

-- check core.mappings for table structure
M.mappings = require "custom.keymaps"

return M
