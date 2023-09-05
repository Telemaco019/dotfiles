return {
	"kdheepak/lazygit.nvim",
	keys = { { "<leader>l", nil, desc = "LazyGit" } },
	cmd = { "LazyGit", "LazyGitFilterCurrentFile" },
	config = function()
		vim.keymap.set("n", "<leader>l", ":LazyGit<cr>", { silent = true, noremap = true })
		require("telescope").load_extension("lazygit")
	end,
}
