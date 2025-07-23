return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    config = function()
      require "configs.conform"
    end,
  },
  {
    "brenoprata10/nvim-highlight-colors",
    config = function()
      require "configs.nvim-highlight-colors"
    end,
    lazy = false,
  },
  {
    "folke/todo-comments.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    opts = {},
    lazy = false,
  },
  {
    "kylechui/nvim-surround",
    version = "*", -- Use for stability; omit to use `main` branch for the latest features
    event = "VeryLazy",
    config = function()
      require("nvim-surround").setup {
        -- Configuration here, or leave empty to use defaults
      }
    end,
    lazy = false,
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      -- Commented out the nvchad defaults as they conflict with lsp-zero
      require("nvchad.configs.lspconfig").defaults()
      require "configs.lspconfig"
    end,
  },
  {
    "williamboman/mason.nvim",
  },
  {
    "williamboman/mason-lspconfig.nvim",
    opt = {
      ensure_installed = {
        "lua-language-server",
        "html-lsp",
        "svelte-language-server",
        "vue-language-server",
        "css-lsp",
        "rust_analyzer",
        "ts_ls",
        "graphql-language-service-cli",
        "sqlls",
        "cspell",
      },
    },
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opt = {
      ensure_installed = {
        "vim",
        "lua",
        "vimdoc",
        "html",
        "css",
        "rust",
        "bash",
        "svelte",
        "vue",
        "typescript",
        "javascript",
        "tsx",
        "go",
        "graphql",
        "sql",
      },
    },
  },
  {
    "nvimtools/none-ls.nvim",
    event = "VeryLazy",
    depends = { "davidmh/cspell.nvim" },
    opts = function(_, opts)
      local cspell = require "cspell"

      opts.sources = opts.sources or {}
      table.insert(
        opts.sources,
        cspell.diagnostics.with {
          diagnostics_postprocess = function(diagnostic)
            diagnostic.severity = vim.diagnostic.severity.HINT
          end,
          extra_args = {
            "--config",
            vim.fn.expand "~/cspell.json",
          },
        }
      )
      table.insert(
        opts.sources,
        cspell.code_actions.with {
          extra_args = {
            "--config",
            vim.fn.expand "~/cspell.json",
          },
        }
      )
    end,
  },
  {
    "davidmh/cspell.nvim",
    dependencies = { "nvimtools/none-ls.nvim" },
  },
  {
    "sindrets/diffview.nvim",
    lazy = false,
  },
  {
    "folke/trouble.nvim",
    opts = {}, -- for default options, refer to the configuration section for custom setup.
    cmd = "Trouble",
    keys = {
      {
        "<leader>xx",
        "<cmd>Trouble diagnostics toggle<cr>",
        desc = "Diagnostics (Trouble)",
      },
      {
        "<leader>xX",
        "<cmd>Trouble diagnostics toggle filter.buf=0<cr>",
        desc = "Buffer Diagnostics (Trouble)",
      },
      {
        "<leader>cs",
        "<cmd>Trouble symbols toggle focus=false<cr>",
        desc = "Symbols (Trouble)",
      },
      {
        "<leader>cl",
        "<cmd>Trouble lsp toggle focus=false win.position=right<cr>",
        desc = "LSP Definitions / references / ... (Trouble)",
      },
      {
        "<leader>xL",
        "<cmd>Trouble loclist toggle<cr>",
        desc = "Location List (Trouble)",
      },
      {
        "<leader>xQ",
        "<cmd>Trouble qflist toggle<cr>",
        desc = "Quickfix List (Trouble)",
      },
    },
  },
  {
    "numToStr/Comment.nvim",
    config = function()
      require("Comment").setup()
    end,
    lazy = false,
  },
  {
    "OXY2DEV/markview.nvim",
    ft = "markdown",

    dependencies = {
      -- You may not need this if you don't lazy load
      -- Or if the parsers are in your $RUNTIMEPATH
      "nvim-treesitter/nvim-treesitter",

      "nvim-tree/nvim-web-devicons",
    },
  },
  {
    "tpope/vim-sleuth",
    lazy = false,
  },
}
