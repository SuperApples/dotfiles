local M = {}

local themes = {
	"kanagawa-wave",
	"catppuccin-latte",
}

local current_theme_index = 1

function M.toggle_theme()
	current_theme_index = current_theme_index % #themes + 1
	vim.cmd("colorscheme " .. themes[current_theme_index])
	vim.api.nvim_set_hl(0, "LeapBackdrop", { link = "comment" })
	vim.api.nvim_set_hl(0, "Cursor", { reverse = true })
end

return M
