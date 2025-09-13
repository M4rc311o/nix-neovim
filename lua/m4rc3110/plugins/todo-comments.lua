return {
	{
		"todo-comments.nvim",
		event = "VimEnter",
		after = function(plugin)
			require("todo-comments").setup({
				signs = false,
			})
		end,
	},
}
