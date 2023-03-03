return {

  ["goolord/alpha-nvim"] = {
    disable = false,
    cmd = "Alpha",
  },

  ["neovim/nvim-lspconfig"] = {
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.plugins.lspconfig"
    end,
  },
  ["nvim-treesitter/nvim-treesitter"] = {},

  ["lukas-reineke/indent-blankline.nvim"] = {},

  ["williamboman/mason.nvim"] = {},
  ["elkowar/yuck.vim"] = {},
    ["iamcco/markdown-preview.nvim"] = {
        run = "cd app && npm install", setup = function() vim.g.mkdp_filetypes = { "markdown" } end, ft = { "markdown" },
    },


  ["folke/which-key.nvim"] = { disable = false },
  ["lervag/vimtex"] = {},
  ["jose-elias-alvarez/null-ls.nvim"] = {
    after = "nvim-lspconfig",
    config = function()
      require "custom.plugins.null-ls"
    end,
  },
}
