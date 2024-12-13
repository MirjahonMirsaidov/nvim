return {
	"folke/trouble.nvim",
	opts = {}, -- for default options, refer to the configuration section for custom setup.
	cmd = "Trouble",
	keys = {
		{
			"<leader>tt",
			"<cmd>Trouble diagnostics toggle<cr>",
			desc = "Diagnostics (Trouble)",
		},
		{
			"<leader>[t",
			"<cmd>Trouble diagnostics next<cr>",
			desc = "Next item",
		},
		{
			"<leader>]t",
			"<cmd>Trouble diagnostics previous<cr>",
			desc = "Previous item",
		},
        {
          "<leader>tQ",
          "<cmd>Trouble qflist toggle<cr>",
          desc = "Quickfix List (Trouble)",
        },
	},
}
