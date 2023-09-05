return {
	"glepnir/dashboard-nvim",
	event = "VimEnter",
	dependencies = { { "nvim-tree/nvim-web-devicons" } },
	config = function()
		require("dashboard").setup({
			theme = "doom",
			config = {
				header = {
					"",
					"███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗",
					"████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║",
					"██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║",
					"██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║",
					"██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║",
					"╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝",
					"",
					"",
					"",
				},
				week_header = {
					enable = false,
				},
				center = {
					-- {
					-- 	icon = " ",
					-- 	icon_hl = "String",
					-- 	desc = "Session",
					-- 	desc_hl = "Title",
					-- 	key = "s",
					-- 	key_hl = "Number",
					-- 	action = "Telescope persisted",
					-- },
					{
						icon = " ",
						icon_hl = "String",
						desc = "Find File",
						desc_hl = "Title",
						key = "f",
						key_hl = "Number",
						action = "Telescope find_files",
					},
					-- {
					-- 	icon = "󱓧 ",
					-- 	icon_hl = "String",
					-- 	desc = "Notes",
					-- 	desc_hl = "Title",
					-- 	key = "n",
					-- 	key_hl = "Number",
					-- 	action = "Neorg index",
					-- },
					{
						icon = "󰉁 ",
						icon_hl = "String",
						desc = "Lazy Sync",
						desc_hl = "Title",
						key = "u",
						key_hl = "Number",
						action = "Lazy sync",
					},
					{
						icon = "󰔟 ",
						icon_hl = "String",
						desc = "Profiler",
						desc_hl = "Title",
						key = "p",
						key_hl = "Number",
						action = "Lazy profile",
					},
					{
						icon = "󰩈 ",
						icon_hl = "String",
						desc = "Quit",
						desc_hl = "Title",
						key = "q",
						key_hl = "Number",
						action = "q",
					},
				},
				footer = {}, --your footer
			},
		})
	end,
}
