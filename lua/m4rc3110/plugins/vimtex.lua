return {
	{
		"vimtex",
		lazy = false,
		-- ft = { "tex", "plaintex", "bib" },
		before = function()
			vim.g.vimtex_view_method = "zathura"
			vim.g.vimtex_quickfix_open_on_warning = 0
		end,
	},
}
