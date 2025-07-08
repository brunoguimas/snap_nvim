-- Basic keybinds 
vim.keymap.set('n', '<leader>n', ':enew<CR>', { desc = 'Create new file' })
vim.keymap.set('n', '<C-s>', ':w<CR>', { desc = 'Save file' })
vim.keymap.set('n', '<leader>q', ':q<CR>', { desc = 'Close neovim' })

-- Split window
vim.keymap.set('n', '<leader>-', ':split<CR>', { desc = 'Split window horizontally' })
vim.keymap.set('n', '<leader>|', ':vsplit<CR>', { desc = 'Split window vertically' })

-- Navigate between windows with Ctrl + hjkl
vim.keymap.set('n', '<C-h>', '<C-w>h', { desc = 'Move to the window to the left' })
vim.keymap.set('n', '<C-j>', '<C-w>j', { desc = 'Move to the window below' })
vim.keymap.set('n', '<C-k>', '<C-w>k', { desc = 'Move to the window above' })
vim.keymap.set('n', '<C-l>', '<C-w>l', { desc = 'Move to the window to the right' })

-- Neotree
vim.keymap.set('n', '<leader>e', ':Neotree toggle reveal<CR>', { desc = 'Toggle Neo-tree' })

-- Bufferline
vim.keymap.set('n', '<Tab>', ':bnext<CR>', { desc = 'Next buffer' })
vim.keymap.set('n', '<S-Tab>', ':bprev<CR>', { desc = 'Previous buffer' })
vim.keymap.set('n', '<leader>bd', ':Bdelete<CR>', { desc = 'Close buffer' })
vim.keymap.set('n', '<leader>ba', ':bufdo bd<CR>', { desc = 'Close all buffers' })

-- Telescope
vim.keymap.set('n', '<leader>ff', ':Telescope find_files<CR>', { desc = 'Find files' })
vim.keymap.set('n', '<leader>fh', ':Telescope find_files hidden=true<CR>', { desc = 'Find hidden files' })
vim.keymap.set('n', '<leader>fr', ':Telescope oldfiles<CR>', { desc = 'Recent files' })
vim.keymap.set('n', '<leader>fg', ':Telescope live_grep<CR>', { desc = 'Live grep' })
vim.keymap.set('n', '<leader>fb', ':Telescope buffers<CR>', { desc = 'Find buffers' })
vim.keymap.set('n', '<leader>fs', ':Telescope git_status<CR>', { desc = 'Git status' })
vim.keymap.set('n', '<leader>fc', ':Telescope git_commits<CR>', { desc = 'Git commits' })

-- Toggleterm
vim.keymap.set('n', '<leader>h', ':ToggleTerm size=15<CR>', { desc = 'Horizontal terminal' })
vim.keymap.set('n', '<leader>v', ':ToggleTerm size=40 direction=vertical dir=%:p:h<CR>', { desc = 'Vertical terminal' })
vim.keymap.set('t', '<C-x>', [[<C-\><C-n>]], { desc = "Exit terminal mode" })

-- Dap
vim.keymap.set('n', '<leader>bb', ':DapToggleBreakpoint<CR>', { desc = "Toggle breakpoint" })
vim.keymap.set('n', '<F1>', ':DapContinue<CR>', { desc = "Dap continue" })
vim.keymap.set('n', '<F2>', ':DapStepInto<CR>', { desc = "Dap step into" })
vim.keymap.set('n', '<F3>', ':DapStepOver<CR>', { desc = "Dap step over" })
vim.keymap.set('n', '<F4>', ':DapStepOut<CR>', { desc = "Dap step out" })

-- Rust
vim.keymap.set('n', '<leader>rr', ':RustLsp runnables<CR>', { desc = "Rust run" })
vim.keymap.set('n', '<leader>rd', ':RustLsp debuggables<CR>', { desc = "Rust debug" })
vim.keymap.set('n', '<leader>rt', ':RustLsp testables<CR>', { desc = "Rust test" })
vim.keymap.set('n', 'gh', ':RustLsp hover actions<CR>', { desc = 'Rust hover actions' })
