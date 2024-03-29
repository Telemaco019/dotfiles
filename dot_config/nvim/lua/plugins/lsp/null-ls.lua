return {
	"jose-elias-alvarez/null-ls.nvim", -- configure formatters & linters
	event = { "BufReadPre", "BufNewFile" },
	config = function()
		-- import null-ls plugin
		local null_ls = require("null-ls")

		local null_ls_utils = require("null-ls.utils")

		-- for conciseness
		local formatting = null_ls.builtins.formatting -- to setup formatters
		local diagnostics = null_ls.builtins.diagnostics -- to setup linters

		-- to setup format on save
		local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

		-- configure null_ls
		null_ls.setup({
			-- setup formatters & linters
			sources = {
				formatting.stylua, -- lua formatter
				-- Python config --
				null_ls.builtins.diagnostics.ruff,
				null_ls.builtins.diagnostics.mypy,
				null_ls.builtins.code_actions.refactoring,
				null_ls.builtins.formatting.black,
				null_ls.builtins.formatting.prettier,
				null_ls.builtins.formatting.ruff,
				-- Terraform
				null_ls.builtins.diagnostics.terraform_validate,
				null_ls.builtins.formatting.terraform_fmt,
			},
			-- configure format on save
			on_attach = function(current_client, bufnr)
				if current_client.supports_method("textDocument/formatting") then
					vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
					vim.api.nvim_create_autocmd("BufWritePre", {
						group = augroup,
						buffer = bufnr,
						callback = function()
							vim.lsp.buf.format({
								filter = function(client)
									--  only use null-ls for formatting instead of lsp server
									return client.name == "null-ls"
								end,
								bufnr = bufnr,
							})
						end,
					})
				end
			end,
		})
	end,
}
