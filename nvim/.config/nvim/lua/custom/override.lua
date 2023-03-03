local M = {}
M.treesitter = {
  ensure_installed = {
    "html",
    "markdown",
    "lua",
    "python",
    "json",
    "bash",
    "comment",
    "vim",
    "css",
  },
  indent = {
    enable = true,
    disable = {"python"}
  }
}

M.nvimtree = {
  git = {
    enable = true,
  },
  renderer = {
    highlight_git = true,
    icons = {
      show = {
        git = true,
      },
    },
  },
  view = {
    side = "left",
  },
}


M.blankline = {
  filetype_exclude = {
    "help",
    "terminal",
    "alpha",
    "packer",
    "lspinfo",
    "TelescopePrompt",
    "TelescopeResults",
    "nvchad_cheatsheet",
    "lsp-installer",
    "",
  },
}

M.mason = {
  ensure_installed = {
    --Lua
    "lua-language-server",
    "stylua",
    --Webdev

    "marksman",
    "prettier",
    "html-lsp",
    "css-lsp",

    --Python

    "pyright",
    "black",
    "isort",

    -- Shell

    "bash-language-server",
    "shellcheck",
    "shfmt",

    -- LateX
    "texlab",
  },
}

M.which_key = {
  plugins = {
    marks = true,
    registers = true,
    spelling = { enabled = false },
  },
  icons = {
    breadcrumb = "»", -- symbol used in the command line area that shows your active key combo
    separator = "  ", -- symbol used between a key and it's label
    group = "⬊ ", -- symbol prepended to a group
  },

  window = {
    padding = { 2, 2, 2, 2 },
  },
  layout = {
    height = { min = 4, max = 25 },
    width = { min = 20, max = 50 },
    spacing = 6,
    align = "left",
  },
  ignore_missing = false,
}

return M
