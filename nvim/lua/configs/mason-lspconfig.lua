local options = {
  ensure_installed = {
    "lua-language-server",
    "html-lsp",
    "svelte",
    "css-lsp",
    "rust_analyzer",
    "ts_ls",
    "cspell",
  },
}

require("mason-lspconfig").setup(options)
