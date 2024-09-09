return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
	},
	opts = {
		filesystem = {
			filtered_items = {
				hide_dotfiles = false,
				hide_gitignored = true,
				hide_by_name = {
					".github",
				},
				never_show = { ".git" },
			},
		},
	},
	config = function()
		vim.keymap.set("n", "<leader>ft", ":Neotree filesystem reveal right<CR>")
	end,
}
