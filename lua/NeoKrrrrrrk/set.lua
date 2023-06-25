vim.opt.nu = true
vim.opt.relativenumber = true

vim.g.enfocado_style = "neon"

vim.opt.tabstop = 4
--vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true
vim.opt.autoindent = true
vim.opt.syntax = "on"

vim.opt.wrap = false
vim.opt.confirm = true

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 4
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

vim.opt.colorcolumn = "80"

local win = vim.api.nvim_get_current_win()
local cursorline = vim.api.nvim_win_get_option(win, 'cursorline')
vim.api.nvim_win_set_option(win, 'cursorline', not cursorline)

vim.opt.list = true
vim.opt.listchars = { eol = '↵', tab = ' ·', trail = '~', space = '·', extends = '▶', precedes = '◀'  }

vim.api.nvim_set_option("scroll", 50)
