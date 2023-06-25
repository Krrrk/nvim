vim.g.mapleader = " "

-- Movement
vim.keymap.set({"n", "v", "i"}, "<A-Up>", "<cmd>m -2<CR>")
vim.keymap.set({"n", "v", "i"}, "<A-Down>", "<cmd>m +1<CR>")
vim.keymap.set({"n", "v"}, "<A-Left>", "b")
vim.keymap.set({"n", "v"}, "<A-Right>", "e")
vim.keymap.set("i", "<A-Left>", "<C-o>b")
vim.keymap.set("i", "<A-Right>", "<C-o>e<C-o>l")

-- Delete
vim.keymap.set({"n", "x", "v"}, "d", "\"_d")

-- Copy/Paste
vim.keymap.set("v", "<C-c>", '"*y')
vim.keymap.set("n", "<C-c>", "yy")
vim.keymap.set("v", "<C-v>", "p")
vim.keymap.set("i", "<C-v>", "<Esc>pi")
vim.keymap.set({"n", "v"}, "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")

-- Jumping with Luasnip
vim.keymap.set("i", "<c-j>", "<cmd>lua require'luasnip'.jump(1)<CR>", { noremap = true, silent = true })
vim.keymap.set("i", "<c-k>", "<cmd>lua require'luasnip'.jump(-1)<CR>", { noremap = true, silent = true })
vim.keymap.set("v", "<c-j>", "<cmd>lua require'luasnip'.jump(1)<CR>", { noremap = true, silent = true })
vim.keymap.set("v", "<c-k>", "<cmd>lua require'luasnip'.jump(-1)<CR>", { noremap = true, silent = true })

-- Telescope Commands
vim.keymap.set("n", "<Leader>g", "<cmd>Telescope live_grep<CR>")
vim.keymap.set("n", "<Leader>G", "<cmd>Telescope live_grep_args<CR>")
vim.keymap.set("n", "<Leader>ww", "<cmd>Telescope git_status<CR>")
vim.keymap.set("n", "<Leader>f", "<cmd>Telescope current_buffer_fuzzy_find theme=ivy<CR>")
vim.keymap.set("n", "<Leader>p", "<cmd>Telescope find_files<CR>")

-- Other Commands
vim.keymap.set("n", "<Leader>s", ":<C-u>call gitblame#echo()<CR>")
vim.keymap.set("n", "<Leader>o", "<cmd>TagbarToggle<CR>")
vim.keymap.set("x", "<leader>o", "\"_dP")
vim.keymap.set("n", "Y", "yg$")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")
vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- Quickfix
vim.keymap.set("n", "<leader>q", "<cmd>cwindow<CR>")
vim.keymap.set("n", "<C-q>", "<cmd>cnext<CR>")
vim.keymap.set("n", "<C-a>", "<cmd>cprevious<CR>")

-- Switching buffers
vim.keymap.set("n", "<A-Tab>", "<cmd>bn<CR>")
vim.keymap.set("n", "<A-S-Tab>", "<cmd>bp<CR>")

-- Moving lines
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- File tree
vim.keymap.set("n", "<Leader>t", "<cmd>NvimTreeToggle<CR>")

-- Window navigation
vim.keymap.set("n", "<C-j>", "<C-W>j")
vim.keymap.set("n", "<C-k>", "<C-W>k")
vim.keymap.set("n", "<C-l>", "<C-W>l")
vim.keymap.set("n", "<C-h>", "<C-W>h")

-- Open init.lua
vim.keymap.set("n", "<leader>ev", "<cmd>vsplit $MYVIMRC<CR>")
vim.keymap.set("n", "<leader>sv", "<cmd>source $MYVIMRC<CR>")

-- Bufferline
vim.keymap.set("n", "<S-t>", "<cmd>enew<CR>")
vim.keymap.set("n", "<S-x>", "<cmd>bdelete<CR>")
vim.keymap.set("n", "<S-w>", "<cmd>bprevious<CR>")
vim.keymap.set("n", "<S-e>", "<cmd>bnext<CR>")

