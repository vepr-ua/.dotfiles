-- Your custom configs/lspconfig.lua file
local nvlsp = require "nvchad.configs.lspconfig"

-- 1. Apply NvChad's default on_attach and capabilities GLOBALLY to all servers
vim.lsp.config('*', {
  capabilities = nvlsp.capabilities,
  on_init = nvlsp.on_init,
})

-- 2. Define your list of language servers
local servers = { "html", "cssls", "pyright", "ts_ls" }

-- 3. Simply enable them natively
vim.lsp.enable(servers)
