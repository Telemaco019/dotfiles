return {
	"NvChad/nvim-colorizer.lua",
  opts = {},
	config = function()
		require("colorizer").setup({
			user_default_options = {
				tailwind = true,
			},
			filetypes = {
				"html",
				"css",
				"templ",
			},
		})
	end,
}
