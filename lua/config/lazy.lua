--[[
This file is used to bootstrap and download the specified plugins.

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

-- This table specifies the plugins that are to be downloaded.
plugins = {
	{ "rose-pine/neovim", name = "rose-pine" }
}

-- Method that actually loads the plugins.
require("lazy").setup(plugins)
