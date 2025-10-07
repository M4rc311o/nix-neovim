require("gruvbox").setup({
	contrast = "hard",
})
vim.o.background = "dark"
vim.cmd("colorscheme gruvbox")

require("lze").load({
	{ import = "m4rc3110.plugins.which-key" },
	{ import = "m4rc3110.plugins.gitsigns" },
	{ import = "m4rc3110.plugins.todo-comments" },
	{ import = "m4rc3110.plugins.nvim-tree" },
	{ import = "m4rc3110.plugins.undotree" },
	{ import = "m4rc3110.plugins.nvim-treesitter" },
	{ import = "m4rc3110.plugins.comment" },
	{ import = "m4rc3110.plugins.mini" },
	{ import = "m4rc3110.plugins.telescope" },
	{ import = "m4rc3110.plugins.conform" },
	{ import = "m4rc3110.plugins.completions" },
	{ import = "m4rc3110.plugins.lsp" },
	{ import = "m4rc3110.plugins.trouble" },
	{ import = "m4rc3110.plugins.harpoon" },
	{ import = "m4rc3110.plugins.vimtex" },
	{ import = "m4rc3110.plugins.markdown-preview" },
})
