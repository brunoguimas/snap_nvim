-- Tabs
vim.opt.autoindent = true
vim.opt.expandtab = true
vim.opt.autoindent = true
vim.opt.smartindent = true

-- Search
vim.opt.hlsearch = true
vim.opt.incsearch = true
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Number column
vim.opt.relativenumber = true
vim.opt.number = true
vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes:1"

-- Undo save
vim.opt.undodir = os.getenv("HOME") .. "/.config/nvim/undodir"
vim.opt.undofile = true

vim.opt.termguicolors = true

vim.opt.showmode = false
