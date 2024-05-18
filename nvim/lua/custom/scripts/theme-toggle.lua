local M = {}

local themes = {
	"rose-pine-dawn",
	"rose-pine-main",
}

local current_theme_index = 1

function M.toggle_theme()
	current_theme_index = current_theme_index % #themes + 1
	vim.cmd("colorscheme " .. themes[current_theme_index])
end

return M
