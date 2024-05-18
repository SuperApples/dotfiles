local map = function(keys, func, desc)
	vim.keymap.set("n", "<leader>" .. keys, func, { desc = desc, noremap = true, silent = true })
end

-- NOTE: Look in kickstart/which-key to set high level options

vim.keymap.set("i", "jk", "<ESC>")

-- NAVIGATION
vim.keymap.set("n", "j", "gj") -- Move visually (skips no lines in word wrap mode)
vim.keymap.set("n", "k", "gk")

-- FILE
map("fs", ":w<CR>", "Save")
map("fa", ":w ", "Save As")
-- \ means :Neotree reveal

-- BUFFER
map("bn", ":enew<CR>", "New")
map("bq", ":bdelete<CR>", "Quit")
map("bb", ":bn<CR>", "Next")
map("bp", ":bp<CR>", "Previous")

-- ETC
map("z", ":ZenMode<CR>", "zen mode")

map("T", ":lua require('custom/scripts/theme-toggle').toggle_theme()<CR>", "theme")
