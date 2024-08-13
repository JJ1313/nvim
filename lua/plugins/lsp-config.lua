return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = {
					"lua_ls",
					"tsserver",
					"jsonls",
					"html",
					"pyright",
					"marksman",
					"cssls",
					"vuels",
				},
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			local lspconfig = require("lspconfig")
			lspconfig.html.setup({})
			lspconfig.jsonls.setup({})
			lspconfig.pyright.setup({})
			lspconfig.lua_ls.setup({})
			lspconfig.tsserver.setup({})
			lspconfig.marksman.setup({})
			lspconfig.cssls.setup({})
			lspconfig.vuels.setup({})
			vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
			vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
			vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {})
		end,
	},
}
