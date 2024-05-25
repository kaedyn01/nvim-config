--[[
This file specifies various vim options that are
turned on, off, or given a specific value.

The structure for specifying commands is as follows:
	vim.opt.command = true/false/number

For example:
	vim.opt.number = true

This would be equivalent to the following command
in vim:
	set number

Another example would be:
	vim.opt.tabstop = 4

The equivalent command in vim would be:
	set tabstop=4 

A list of all the availabe commands can be found 
at https://vimdoc.sourceforge.net/htmldoc/options.html
--]]

-- Show line numbers.
vim.opt.number = true

-- Show relative line numbers.
vim.opt.relativenumber = true

-- Put line at the 100th character.
vim.opt.colorcolumn = "100"

-- Defines length of autoindent in spaces. 
vim.opt.shiftwidth = 4

-- Defines length of tab in spaces.
vim.opt.tabstop = 4

-- Autoindent to match code structure.
vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.cindent = true

-- Min number of screen lines to keep above and below the cursor.
vim.opt.scrolloff = 10

-- Changes the Explore view to use trees instead of only showing files the current directory.
vim.cmd("let g:netrw_liststyle = 3")
