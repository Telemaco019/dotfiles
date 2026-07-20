-- Plugin for better syntax highlighting

return {
	{
		"nvim-treesitter/nvim-treesitter",
		branch = "main",
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
			require("nvim-treesitter").setup({})

			require("nvim-treesitter").install({
				"python", "yaml", "terraform", "hcl", "bash", "go", "lua", "zig",
				"dockerfile", "html", "css", "json", "markdown", "markdown_inline",
				"vim", "vimdoc",
			})

			-- Enable treesitter-driven highlighting/folding/indentation per buffer.
			-- pcall guards buffers whose language has no parser installed yet.
			vim.api.nvim_create_autocmd("FileType", {
				group = vim.api.nvim_create_augroup("treesitter-start", { clear = true }),
				callback = function(args)
					pcall(function()
						vim.treesitter.start(args.buf)
						vim.wo[args.win].foldexpr = "v:lua.vim.treesitter.foldexpr()"
						vim.wo[args.win].foldmethod = "expr"
						vim.bo[args.buf].indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
					end)
				end,
			})
		end,
	},
}
