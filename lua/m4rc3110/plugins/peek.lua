return {
	{
		"peek.nvim",
		ft = "markdown",
		after = function()
			require("peek").setup({})
			vim.api.nvim_create_user_command("PeekOpen", require("peek").open, {})
			vim.api.nvim_create_user_command("PeekClose", require("peek").close, {})
			vim.keymap.set("n", "<leader>ll", function()
				require("peek").open()
			end, { desc = "Markdown preview (open)" })
		end,
	},
}
