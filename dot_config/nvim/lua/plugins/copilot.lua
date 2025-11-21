return {
	{
		"zbirenbaum/copilot.lua",
		cmd = "Copilot", -- load when you run :Copilot
		event = "InsertEnter", -- or when you start typing
		build = ":Copilot auth", -- helper to run auth once
		opts = {
			suggestion = {
				enabled = true,
				auto_trigger = true,
				keymap = {
					accept = "<M-l>", -- Alt+l to accept
					next = "<M-]>",
					prev = "<M-[>",
					dismiss = "<C-]>",
				},
			},
			panel = {
				enabled = false,
			},
		},
		config = function(_, opts)
			require("copilot").setup(opts) -- this is the important part
		end,
	},
	{
		"zbirenbaum/copilot-cmp",
		dependencies = { "copilot.lua" },
		config = function()
			require("copilot_cmp").setup()
		end,
	},
}
