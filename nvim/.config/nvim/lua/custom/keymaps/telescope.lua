return {
  n = {
    -- find
    ["<leader>f"] = { "", "  telescope" },
    ["<leader>ff"] = { "<cmd> Telescope find_files <CR>", "  find files" },
    ["<leader>fa"] = { "<cmd> Telescope find_files follow=true no_ignore=true hidden=true <CR>", "  find all" },
    ["<leader>fw"] = { "<cmd> Telescope live_grep <CR>", "   live grep" },
    ["<leader>fb"] = { "<cmd> Telescope buffers <CR>", "  find buffers" },
    ["<leader>fh"] = { "<cmd> Telescope help_tags <CR>", "  help page" },
    ["<leader>fo"] = { "<cmd> Telescope oldfiles <CR>", "   find oldfiles" },
    ["<leader>fk"] = { "<cmd> Telescope keymaps <CR>", "   show keys" },

    -- git
    ["<leader>fg"] = { "", "  git" },
    ["<leader>fgl"] = { "<cmd> LazyGit<CR>", "  lazigit console" },
    ["<leader>fgm"] = { "<cmd> Telescope git_commits <CR>", "  git commits" },
    ["<leader>fgt"] = { "<cmd> Telescope git_status <CR>", "  git status" },

    -- pick a hidden term
    ["<leader>fp"] = { "<cmd> Telescope terms <CR>", "  pick hidden term" },
    -- theme switcher
    ["<leader>ft"] = { "<cmd> Telescope themes <CR>", "  nvchad themes" },
    ["<leader>fu"] = { "<cmd> :NvChadUpdate <CR>", "  nvchad update" },
  },
}

