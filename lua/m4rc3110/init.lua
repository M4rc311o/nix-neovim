require("m4rc3110.options")
require("m4rc3110.remap")

vim.api.nvim_create_autocmd("TextYankPost", {
  desc = "Highlight yanked text",
  group = vim.api.nvim_create_augroup("HighlightYank", { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})

vim.api.nvim_create_autocmd("FileType", {
  desc = "Written text adjustments",
  group = vim.api.nvim_create_augroup("WrittenText", { clear = true }),
  pattern = { "tex", "plaintex" },
  callback = function()
    vim.opt_local.wrap = true
    vim.opt_local.linebreak = true
    vim.keymap.set({ "n", "v" }, "j", "v:count ? 'j' : 'gj'", { buffer = true, expr = true })
	vim.keymap.set({ "n", "v" }, "k", "v:count ? 'k' : 'gk'", { buffer = true, expr = true })
  end,
})

-- NOTE: register an extra lze handler with the spec_field 'for_cat'
-- that makes enabling an lze spec for a category slightly nicer
require("lze").register_handlers(require('nixCatsUtils.lzUtils').for_cat)


-- NOTE: Register another one from lzextras. This one makes it so that
-- you can set up lsps within lze specs,
-- and trigger lspconfig setup hooks only on the correct filetypes
require('lze').register_handlers(require('lzextras').lsp)

require("m4rc3110.plugins");
