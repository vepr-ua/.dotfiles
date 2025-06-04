local on_attach = require("nvchad.configs.lspconfig").on_attach
local on_init = require("nvchad.configs.lspconfig").on_init
local capabilities = require("nvchad.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"
local servers = { "html", "cssls", "rust_analyzer", "svelte", "tailwindcss", "gopls" }

local function add_lsp_keymaps(bufnr)
  local opt = { buffer = bufnr, noremap = true, silent = true, desc = "Code Action" }
  vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, opt)
end

-- lsps with default config
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = function(client, bufnr)
      on_attach(client, bufnr)
      add_lsp_keymaps(bufnr)
    end,
    on_init = on_init,
    capabilities = capabilities,
  }
end

-- typescript
lspconfig.ts_ls.setup {
  on_attach = function(client, bufnr)
    on_attach(client, bufnr)
    add_lsp_keymaps(bufnr)
  end,
  on_init = on_init,
  capabilities = capabilities,
}
