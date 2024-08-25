return {
	"kdheepak/lazygit.nvim",
	keys = {
		{ "<leader>l", "<cmd>LazyGit<cr>", desc = "LazyGit" },
	},
	cmd = { "LazyGit", "LazyGitFilterCurrentFile" },
	config = function()
		vim.keymap.set("n", "<leader>l", ":LazyGit<cr>", { silent = true, noremap = true })
		require("telescope").load_extension("lazygit")
	end,
}
