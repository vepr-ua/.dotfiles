require "nvchad.options"

-- add yours here!

local o = vim.o
-- o.cursorlineopt ='both' -- to enable cursorline!

o.relativenumber = true
o.termguicolors = true

-- Show whitespaces
o.list = true
o.listchars="tab:↠ ,trail:.,extends:#,nbsp:."
o.shiftwidth = 0
o.expandtab = false
