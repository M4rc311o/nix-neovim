return {
	{
		"markdown-preview.nvim",
		cmd = { "MarkdownPreview", "MarkdownPreviewStop", "MarkdownPreviewToggle" },
		ft = "markdown",
		keys = {
			{
				"<leader>mp",
				"<cmd>MarkdownPreview <CR>",
				mode = { "n" },
				noremap = true,
				desc = "Markdown preview start",
			},
			{
				"<leader>ms",
				"<cmd>MarkdownPreviewStop <CR>",
				mode = { "n" },
				noremap = true,
				desc = "Markdown preview stop",
			},
			{
				"<leader>mt",
				"<cmd>MarkdownPreviewToggle <CR>",
				mode = { "n" },
				noremap = true,
				desc = "Markdown preview toggle",
			},
		},
		before = function(plugin)
			-- vim.g.mkdp_auto_close = 0

			vim.cmd([[
                function! OpenMarkdownPreview(url) abort
                    if executable('chromium')
                        call jobstart(["chromium", "--new-window", "--disable-extensions", "--disable-sync", "--no-first-run", printf("--app=%s", a:url)])
                    else
                        call jobstart(["xdg-open", a:url])
                    endif
                endfunction
            ]])

			vim.g.mkdp_browserfunc = "OpenMarkdownPreview"

			-- function _G.OpenBrowser(url)
			-- 	vim.notify("Markdown preview URL: " .. url)
			-- 	if vim.fn.executable("chromium") then
			-- 		vim.fn.system({
			-- 			"chromium",
			-- 			"--app=" .. url,
			-- 			"--new-window",
			-- 			"--disable-extensions",
			-- 			"--disable-sync",
			-- 			"--no-first-run",
			-- 		})
			-- 	else
			-- 		vim.fn.system({ "xdg-open", url })
			-- 	end
			-- end
		end,
	},
}
