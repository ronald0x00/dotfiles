-- on 0.8, you should use vim.lsp.buf.format({ bufnr = bufnr }) instead

local function set_globals()
  vim.g.python3_host_prog = vim.loop.os_homedir() .. "/.virtualenvs/neovim/bin/python"
  vim.g.vimtex_view_method = "zathura"
end

local function set_options()
  local options = {
    autoindent = true,
    autoread = true,
    clipboard = "unnamed,unnamedplus",
    cursorline = true,
    expandtab = true,
    foldenable = false,
    hidden = true,
    ignorecase = true,
    mouse = "a",
    number = true,
    relativenumber = true,
    scrolloff = 5,
    shell = "/bin/zsh",
    shiftwidth = 4,
    smartcase = true,
    smartindent = true,
    softtabstop = 4,
    splitbelow = true,
    splitright = true,
    tabstop = 4,
    termguicolors = true,
    wildignore = "*/tmp/*,*.so,*.swp,*.zip,*.pyc,*.db,*.sqlite",
    laststatus = 3,
  }
  for key, val in pairs(options) do
    vim.opt[key] = val
  end
end
set_globals()
set_options()
