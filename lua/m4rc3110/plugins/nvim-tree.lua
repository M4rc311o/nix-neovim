return {
	{
		"nvim-tree.lua",
		lazy = false,
		cmd = {
			"NvimTreeOpen",
			"NvimTreeClose",
			"NvimTreeToggle",
			"NvimTreeFocus",
			"NvimTreeRefresh",
			"NvimTreeFindFile",
			"NvimTreeFindFileToggle",
			"NvimTreeClipboard",
			"NvimTreeResize",
			"NvimTreeCollapse",
			"NvimTreeCollapseKeepBuffers",
			"NvimTreeHiTest",
		},
		keys = {
			{ "<leader>e", "<cmd>NvimTreeToggle<CR>", mode = { "n" }, desc = "Toggle file tree" },
		},
		before = function(plugin)
			vim.g.loaded_netrw = 1
			vim.g.loaded_netrwPlugin = 1
		end,
		after = function(plugin)
			require("nvim-tree").setup({})
		end,
	},
}
