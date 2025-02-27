-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy") -- /config/lazy.lua
if vim.g.neovide then
	vim.g.neovide_cursor_vfx_mode = "railgun"
end
vim.o.background = "dark" -- or "light" for light mode
vim.cmd([[colorscheme gruvbox]])
