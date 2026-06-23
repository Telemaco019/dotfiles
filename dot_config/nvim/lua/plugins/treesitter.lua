-- Plugin for better syntax highlighting

return {
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
		lazy = false,
		dependencies = {
			"windwp/nvim-ts-autotag",
		},
		config = function()
			require("nvim-treesitter").setup({
				install_dir = vim.fn.stdpath("data") .. "/lazy/nvim-treesitter",
			})

			vim.api.nvim_create_autocmd("FileType", {
				callback = function()
					pcall(vim.treesitter.start)
				end,
			})

			vim.opt.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"

			require("nvim-ts-autotag").setup()
		end,
	},
}
