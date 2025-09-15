require "nvchad.options"

-- add yours here!

local o = vim.o
-- o.cursorlineopt ='both' -- to enable cursorline!

o.relativenumber = true
o.termguicolors = true

-- Show whitespaces
o.list = true
o.listchars = "tab:↠ ,trail:.,extends:#,nbsp:."
o.shiftwidth = 0
o.expandtab = false
--
-- o.spell = true
-- o.spelllang = "en_us"

-- Enable the option to require a Prettier config file
-- If no prettier config file is found, the formatter will not be used
vim.g.lazyvim_prettier_needs_config = true
