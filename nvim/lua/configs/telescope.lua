-- Telescop configurations and overrides
local options = {
  defaults = {
    file_ignore_patterns = { "node_modules", ".git/" },
  },
  pickers = {
    find_files = {
      hidden = true,
    },
    live_grep = {
      additional_args = function()
        return { "--hidden" }
      end,
    },
  },
}

return options
