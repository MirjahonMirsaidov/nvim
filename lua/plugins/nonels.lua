return {
	{
		"nvimtools/none-ls.nvim",
		config = function()
			local null_ls = require("null-ls")

			null_ls.setup({
				sources = {
					null_ls.builtins.formatting.stylua,
					null_ls.builtins.formatting.black,
					null_ls.builtins.formatting.isort,
					null_ls.builtins.diagnostics.flake8,
					null_ls.builtins.formatting.prettier,
				},
			})

			vim.keymap.set("n", "<leader>pf", vim.lsp.buf.format, {})
			vim.api.nvim_create_autocmd("BufWritePre", {
				pattern = "*.py",
				callback = function()
					vim.lsp.buf.format({ async = false, timeout_ms = 2000 })
				end,
			})
			-- Command and keybinding for Black formatting
			vim.api.nvim_create_user_command("FormatBlack", function()
				vim.cmd("silent !black %")
				vim.cmd("e!") -- Reload the file
			end, {})
			vim.keymap.set("n", "<leader>pfb", ":FormatBlack<CR>", { silent = true })

			-- Command and keybinding for isort import organizing
			vim.api.nvim_create_user_command("OrganizeImports", function()
				vim.cmd("silent !isort %")
				vim.cmd("e!") -- Reload the file
			end, {})
			vim.keymap.set("n", "<leader>pfi", ":OrganizeImports<CR>", { silent = true })
		end,
	},
}
