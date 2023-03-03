local M = {}
M.disabled = require "custom.keymaps.disabled"


M.general = {

  n = {

    ["<leader>q"] = { "<cmd> q <CR>", "Quit" },
    ["<leader>w"] = { "<cmd> w <CR>", "Save" },
    ["<leader>e"] = { "<cmd> :NvimTreeToggle <CR>", "Explorer" },
  },

  i = {
    ["jk"] = { "<Esc>", "escape insert mode" },
  },

  v = {

    ["p"] = { "pgvy", "paste" },
  },
}

M.trouble = {
  n = {
    ["<leader>d"] = { "<cmd> TroubleToggle<CR>", "troubleshot" },
    ["<leader>dw"] = { "<cmd> TroubleToggle workspace_diagnostics<CR>", "troubleshot workspace" },
    ["<leader>dd"] = { "<cmd> TroubleToggle document_diagnostics<CR>", "troubleshot document" },
    ["<leader>df"] = { "<cmd> TroubleToggle quickfix<CR>", "quickfix" },
  },
}

M.mason = {
  n = {
    ["<leader>mm"] = { "<cmd> Mason<CR>", "Mason" },
    ["<leader>mi"] = { "<cmd> MasonInstallAll<CR>", "Mason Install All" },
    ["<leader>mu"] = { "<cmd> MasonUninstalAll<CR>", "Mason UnInstall All" },
    ["<leader>ml"] = { "<cmd> MasonLog<CR>", "Mason Log" },
  },
}

M.lspconfig = require "custom.keymaps.lspconfig"
M.telescope = require "custom.keymaps.telescope"
M.vimtex = require "custom.keymaps.vimtex"
M.mp = require "custom.keymaps.mp"
return M
