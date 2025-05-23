-- ~/.config/nvim/lua/plugins/init.lua
-- Main plugin setup file that loads all plugin configurations

return {
  -- Load all plugin configurations
  require("plugins.colorscheme"),
  require("plugins.ui"),
  require("plugins.editor"),
  require("plugins.lsp"),
  require("plugins.completion"),
  require("plugins.format_lint"),
  require("plugins.search_nav"),
  require("plugins.git"),
  require("plugins.debug"),
  require("plugins.test"),
  require("plugins.terminal"),
  require("plugins.lang_specific"),
}
