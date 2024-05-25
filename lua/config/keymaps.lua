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
shortcut = "<leader>sv"
command = "<C-w>v"
description = { desc = "Splits current window into two vertical windows." }
vim.keymap.set(mode, shortcut, command, description)

-- Splits current window into two vertical windows
mode = "n"
shortcut = "<leader>sh"
command = "<C-w>s"
description = { desc = "Splits current window into two horizontal windows." }
vim.keymap.set(mode, shortcut, command, description)

-- Sets the split windows equal in size.
mode = "n"
shortcut = "<leader>se"
command = "<C-w>="
description = { desc = "Sets the split windows equal in size." }
vim.keymap.set(mode, shortcut, command, description)

-- Closes the active window.
mode = "n"
shortcut = "<leader>sx"
command = "<cmd>close<CR>"
description = { desc = "Closes the active window." }
vim.keymap.set(mode, shortcut, command, description)

-- Shows a view of the current directory (project view).
mode = "n"
shortcut = "<leader>pv"
command = "<cmd>Ex<CR>"
description = { desc = "Shows a view of the current directory (project view)." }
vim.keymap.set(mode, shortcut, command, description)
