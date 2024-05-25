--[[
This is the main init.lua file for the NeoVim config.
All of the configuration files are located in the following directory:

    ./lua/config/

To tell NeoVim to load a specific file or module, use the following template:
require("projectdirectory.file")

The '.' character is the character that tells require() to use a 
path seperator. For example, in Unix systems, '.' is replaced with '\'.
In windows systems, it's replaced with '\'.
--]]

-- Loads the greating the message. 
require("config.greeting-message")

--[[
Loads the Lazy package manager.
Lazy is located in lua/config/ due to it not working
when being placed in the parent directory (lua).

This should always be loaded first in order to make sure
plugins are properly loaded by Lazy. Afterwards, the plugins'
file can be required. 
--]]
require("config.lazy")

-- Loads the colorscheme
require("config.plugins.colorscheme")

-- Loads the options for NeoVim
require("config.options")

-- Loads the custom keymaps
require("config.keymaps")
