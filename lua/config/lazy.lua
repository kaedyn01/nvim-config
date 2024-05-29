--[[
This file is used to bootstrap Lazy package manager and download the 
specified plugins.

The following 11 lines are copy and pasted from the lazy.nvim
github repo.

Plugins that are downloaded are specified in the plugins table 
defined below. See the comment above plugins for more info. 
--]]
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- This is the method that actually loads the plugins.
require("lazy").setup({{import = "config.plugins"}, {import = "config.plugins.lsp"}})
