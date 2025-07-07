-- Basic keybinds
vim.keymap.set('n', '<C-s>', ':w<CR>', { desc = 'Move to the window to the left' })
vim.keymap.set('n', '<leader>q', ':q<CR>', { desc = 'Close neovim' })

-- Navigate between windows with Ctrl + hjkl
vim.keymap.set('n', '<C-h>', '<C-w>h', { desc = 'Move to the window to the left' })
vim.keymap.set('n', '<C-j>', '<C-w>j', { desc = 'Move to the window below' })
vim.keymap.set('n', '<C-k>', '<C-w>k', { desc = 'Move to the window above' })
vim.keymap.set('n', '<C-l>', '<C-w>l', { desc = 'Move to the window to the right' })

-- Neotree
vim.keymap.set('n', '<leader>e', ':Neotree toggle right reveal<CR>', { desc = 'Toggle Neo-tree' })

-- Bufferline
vim.keymap.set('n', '<Tab>', ':bnext<CR>', { desc = 'Next buffer' })
vim.keymap.set('n', '<S-Tab>', ':bprev<CR>', { desc = 'Previous buffer' })
vim.keymap.set('n', '<leader>bd', ':Bdelete<CR>', { desc = 'Close buffer' })

-- Telescope
vim.keymap.set('n', '<leader>ff', ':Telescope find_files<CR>', { desc = 'Find files' })
vim.keymap.set('n', '<leader>fr', ':Telescope oldfiles<CR>', { desc = 'Recent files' })
vim.keymap.set('n', '<leader>fg', ':Telescope live_grep<CR>', { desc = 'Live grep' })
vim.keymap.set('n', '<leader>fb', ':Telescope buffers<CR>', { desc = 'Find buffers' })
vim.keymap.set('n', '<leader>fs', ':Telescope git_status<CR>', { desc = 'Git status' })
