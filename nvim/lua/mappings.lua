require "nvchad.mappings"

-- Default mappings
-- https://github.com/NvChad/NvChad/blob/v2.5/lua/nvchad/mappings.lua

-- add yours here

local map = vim.keymap.set

-- Pane management
map("n", "<leader>|", ":vsplit <cr>", { desc = "Split pane vertically" })
map("n", "<leader>-", ":split <cr>", { desc = "Split pane horizontally "})
-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

-- TODO Comments
map("n", "<leader>ft", ":TodoTelescope<cr>", { desc = "Search through all project todos" })
map("n", "<leader>xq", ":TodoQuickFix<cr>", { desc = "Open quickfix list to show todos "})

-- Search and replace 
map("v", "<C-r>", "hy:%s/<C-r>h//gc<left><left><left>")

-- Code Actions Binding
map({"n", "v"}, "<leader>ca", vim.lsp.buf.code_action, { desc = "Code action"})
