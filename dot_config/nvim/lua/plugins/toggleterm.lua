return {
	"akinsho/toggleterm.nvim",
	version = "v2.*",
	config = function()
		require("toggleterm").setup({
			direction = "float",
		})
		vim.keymap.set("n", "<c-t>", vim.cmd.ToggleTerm)
		vim.keymap.set("t", "<c-t>", vim.cmd.ToggleTerm)
	end,
	lazy = true,
	cmd = { "ToggleTerm" },
	keys = { "<c-t>" },
}
