
-- ~/.config/nvim/lua/config/lazy.lua

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "--branch=stable",
    "https://github.com/folke/lazy.nvim.git",
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- Windows support (nếu cần)
if vim.fn.has("win32") == 1 then
  vim.env.PATH = vim.env.PATH
    .. ";C:\\Users\\TieuSoi\\scoop\\apps\\mingw\\current\\bin"
    .. ";C:\\Users\\TieuSoi\\scoop\\apps\\luarocks\\current"
end

-- ✅ Load all plugins from lua/plugins/*.lua automatically
require("lazy").setup({
  { import = "plugins" },
}, {
  ui = { border = "rounded" }, -- tùy chọn giao diện
})

