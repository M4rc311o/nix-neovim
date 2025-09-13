return {
	{
		"friendly-snippets",
		dep_of = { "luasnip" },
	},
	{
		"luasnip",
		dep_of = { "blink.cmp" },
		after = function()
			local luasnip = require("luasnip")
			require("luasnip.loaders.from_vscode").lazy_load()
			luasnip.config.setup({})
		end,
	},
	{
		"colorful-menu.nvim",
		on_plugin = { "blink.cmp" },
		after = function(plugin)
			require("colorful-menu").setup({})
		end,
	},
	{
		"blink.cmp",
		event = "DeferredUIEnter",
		after = function(plugin)
			require("blink.cmp").setup({
				keymap = {
					preset = "none",
					["<C-o>"] = { "show", "show_documentation", "hide_documentation" },
					["<C-e>"] = { "hide", "fallback" },
					["<C-y>"] = { "select_and_accept", "fallback" },

					-- ["<Up>"] = { "select_prev", "fallback" },
					-- ["<Down>"] = { "select_next", "fallback" },
					["<C-p>"] = { "select_prev", "fallback_to_mappings" },
					["<C-n>"] = { "select_next", "fallback_to_mappings" },

					["<C-b>"] = { "scroll_documentation_up", "fallback" },
					["<C-f>"] = { "scroll_documentation_down", "fallback" },

					["<Tab>"] = { "snippet_forward", "fallback" },
					["<S-Tab>"] = { "snippet_backward", "fallback" },

					-- ["<C-k>"] = { "show_signature", "hide_signature", "fallback" },
				},
				-- signature = {
				-- 	enabled = false,
				-- 	 window = { show_documentation = false },
				-- },
				snippets = {
					preset = "luasnip",
				},
				sources = {
					default = { "lsp", "path", "snippets", "buffer" },
				},
				completion = {
					menu = {
						draw = {
							columns = { { "label", "label_description", gap = 1 }, { "kind" } },
							treesitter = { "lsp" },
							components = {
								label = {
									text = function(ctx)
										return require("colorful-menu").blink_components_text(ctx)
									end,
									highlight = function(ctx)
										return require("colorful-menu").blink_components_highlight(ctx)
									end,
								},
							},
						},
					},
					documentation = {
						auto_show = true,
					},
				},
			})
		end,
	},
}
