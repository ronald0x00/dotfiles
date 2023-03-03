M = {}
local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"

local servers = { "yamlls", "bashls", "pyright", "html", "cssls" }

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end

M.make_config = function()
  capabilities.textDocument.completion.completionItem.snippetSupport = true
  capabilities.textDocument.completion.completionItem.resolveSupport = {
    properties = { "documentation", "detail", "additionalTextEdits" },
  }
  capabilities = require("cmp_nvim_lsp").default_capabilities(capabilities)
  return { on_attach = on_attach, capabilities = capabilities }
end

M.make_pyright_config = function()
  local config = M.make_config()
  config.settings = {
    pyright = { autoImportCompletion = true },
    python = {
      analysis = {
        autoSearchPaths = true,
        diagnosticMode = "openFilesOnly",
        useLibraryCodeForTypes = true,
        typeCheckingMode = "off",
      },
    },
  }

  local function venv_path()
    if vim.fn.isdirectory ".venv" == 1 then
      return vim.fn.getcwd() .. "/.venv"
    end

    if vim.fn.filereadable "pyproject.toml" == 1 then
      local poetry = vim.fn.system("poetry env info -p"):gsub("\n", "")
      if vim.fn.isdirectory(poetry) then
        return poetry
      end
    end
  end

  local venv = venv_path()
  if venv == nil then
    return config
  end

  local packages = vim.fn.system(venv .. "/bin/python -m pip --list")
  if string.find(packages, "mypy") ~= nil then
    config.settings.python.analysis.typeCheckingMode = "basic"
  end

  config.settings.python.pythonPath = venv .. "/bin/python"
  return config
end

return M
