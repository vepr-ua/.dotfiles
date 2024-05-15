local options = {
  ---Render style
  ---@usage 'background'|'foreground'|'virtual'
  render = 'virtual',
  virtual_symbol = '■',
  enable_tailwind = true,
  enable_named_colors = true,
}

require("nvim-highlight-colors").setup(options)
