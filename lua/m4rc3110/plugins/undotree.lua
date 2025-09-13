return {
	{
		"undotree",
		cmd = { "UndotreeToggle", "UndotreeHide", "UndotreeShow", "UndotreeFocus", "UndotreePersistUndo" },
		keys = {
			{ "<leader>u", "<cmd>UndotreeToggle<CR>", mode = { "n" }, desc = "Undo Tree" },
		},
	},
}
