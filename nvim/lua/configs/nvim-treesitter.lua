local options = {
  ensure_installed = {
    "vim",
    "lua",
    "vimdoc",
    "html",
    "css",
    "rust",
    "bash",
    "svelte",
    "typescript",
    "javascript",
    "tsx",
    "go",
  },
}

require("nvim-treesitter").setup(options)
