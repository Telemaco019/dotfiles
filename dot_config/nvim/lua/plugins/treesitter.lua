-- Plugin for better syntax highlighting

return {
	{
		"nvim-treesitter/nvim-treesitter",
		branch = "master",
		build = ":TSUpdate",
		lazy = false,
		dependencies = {
			{
				"windwp/nvim-ts-autotag",
				config = function()
					require("nvim-ts-autotag").setup()
				end,
			},
		},
		config = function()
			require("nvim-treesitter.configs").setup({
				ensure_installed = {
					"python",
					"yaml",
					"terraform",
					"hcl",
					"bash",
					"go",
					"lua",
					"zig",
					"dockerfile",
					"html",
					"css",
					"json",
					"markdown",
					"markdown_inline",
					"vim",
					"vimdoc",
				},
				highlight = { enable = true },
				indent = { enable = true },
				auto_install = true,
			})
		end,
	},
}
