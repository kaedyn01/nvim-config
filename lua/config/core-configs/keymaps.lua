--[[
This command sets the "mapleader" key binding.

The map leader acts entrance key into the rest of the custom commands 
defined in this file.

All custom keymaps defined in the rest of this file use the following format:

	mode = mode in which the command is runnable
	shortcut = new command shortcut
	command = command that's being executed
	description = { desc = brief description of the preceding keybinding }
	
For example, the following keymap provides a shortcut for splitting the current window
vertically, thus creating two side by side windows:

	mode = "n"
	shortcut = "<leader>sv"
	command = "<C-w>v"
	description = { desc = "Splits current window into two vertical windows." }
	vim.keymap.set(mode, shortcut, command, description)

NOTE: <cmd>command<CR> is the same thing as typing ":command" and pressing enter.
--]]
vim.g.mapleader = " "

-- Splits current window into two vertical windows.
mode = "n"
shortcut = "<leader>wa"
command = "<C-w>v"
description = { desc = "Splits current window into two vertical windows." }
vim.keymap.set(mode, shortcut, command, description)

-- Splits current window into two vertical windows
mode = "n"
shortcut = "<leader>wh"
command = "<C-w>s"
description = { desc = "Splits current window into two horizontal windows." }
vim.keymap.set(mode, shortcut, command, description)

-- Closes the active window.
mode = "n"
shortcut = "<leader>wd"
command = "<cmd>close<CR>"
description = { desc = "Closes the active window." }
vim.keymap.set(mode, shortcut, command, description)

-- Splits current window into two vertical windows
mode = "n"
shortcut = "<leader>ws"
command = "<C-w>w"
description = { desc = "Switches to the next split window." }
vim.keymap.set(mode, shortcut, command, description)

-- Switch to the window to the right of the active window.
mode = "n"
shortcut = "<leader>we"
command = "<C-w>l"
description = { desc = "Switch to the window to the right of the active window." }
vim.keymap.set(mode, shortcut, command, description)

-- Switch to the window to the left of the active window.
mode = "n"
shortcut = "<leader>wq"
command = "<C-w>h"
description = { desc = "Switch to the window to the left of the active window." }
vim.keymap.set(mode, shortcut, command, description)

-- Open and close nvim-tree file tree.
mode = "n"
shortcut = "<leader>pf"
command = ":NvimTreeToggle<CR>"
description = { desc = "Shortcut to open and close nvim-tree file tree." }
vim.keymap.set(mode, shortcut, command, description)
