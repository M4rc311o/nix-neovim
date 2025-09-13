return {
	{
		"conform.nvim",
		event = { "BufWritePre" },
		cmd = { "ConformInfo" },
		keys = {
			{
				"<leader>f",
				function()
					require("conform").format({
						async = true,
						lsp_format = "fallback",
					})
				end,
				mode = { "n", "v" },
				desc = "[F]ormat buffer",
			},
		},
		after = function(plugin)
			require("conform").setup({
				formatters_by_ft = {
					lua = { "stylua" },
				},
			})
		end,
	},
}
