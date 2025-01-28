return {
	{
		"stevearc/aerial.nvim",
		config = function()
			require("aerial").setup({
				on_attach = function(bufnr)
					vim.keymap.set("n", "{", "<cmd>AerialPrev<CR>", { buffer = bufnr })
					vim.keymap.set("n", "}", "<cmd>AerialNext<CR>", { buffer = bufnr })
				end,
				layout = {
					min_width = 20,
					default_direction = "prefer_left",
				},
				autojump = true,
				open_automatic = true,
				nerd_font = false,
				icons = {
					Interface = "-", -- In Markdown, this is what's used
					Class = "",
					Constructor = "",
					Enum = "",
					Function = "",
					Module = "",
					Method = "",
					Struct = "",
				},
			})
			vim.keymap.set("n", "<leader>wa", "<cmd>AerialToggle!<CR>")
		end,
	},
}
