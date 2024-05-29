return {
	"williamboman/mason.nvim",
	dependencies = {
		"williamboman/mason-lspconfig.nvim",
		"WhoIsSethDaniel/mason-tool-installer.nvim",
	}, 
	config = function()
		-- Import mason
		local mason = require("mason")
	
		-- Import mason-lspconfig
		local mason_lspconfig = require("mason-lspconfig")

		local mason_tool_installer = require("mason-tool-installer")

		-- enable mason and configure icons
		mason.setup()

		mason_lspconfig.setup({
			-- list of servers for mason to install
			ensure_installed = {
				"lua_ls",
			},
			-- auto-install configured servers (with lspconfig)
			automatic_installation = true,	-- Not the same as ensure_installed
		})	

	end
  }
