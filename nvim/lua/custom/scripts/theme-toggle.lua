local M = {}

local themes = {
	"kanagawa",
	"rose-pine-dawn",
}

local current_theme_index = 1

function M.toggle_theme()
	current_theme_index = current_theme_index % #themes + 1
	vim.cmd("colorscheme " .. themes[current_theme_index])
end

return M
