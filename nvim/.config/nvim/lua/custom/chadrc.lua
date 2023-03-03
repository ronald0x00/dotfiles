local M = {}
local override = require "custom.override"

M.ui = {
  theme = "tokyonight",
  theme_toggle = { "tokyonight", "tokyodark" },
}

M.mappings = require "custom.keymaps"

M.plugins = {
  user = require "custom.plugins",
  override = {
    ["kyazdani42/nvim-tree.lua"] = override.nvimtree,
    ["nvim-treesitter/nvim-treesitter"] = override.treesitter,
    ["lukas-reineke/indent-blankline.nvim"] = override.blankline,
    ["williamboman/mason.nvim"] = override.mason,
    ["folke/which-key.nvim"] = override.which_key,
  },
}
return M
