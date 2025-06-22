vim.api.nvim_set_keymap('i', '<C-J>', 'copilot#Accept("<CR>")', { silent = true, expr = true })
vim.api.nvim_set_keymap('n', '<C-f>', '<cmd>!tmux neww tmux-sessionizer<CR>', { silent = true })
vim.api.nvim_set_keymap('n', '<leader>nd', '<cmd>NoiceDismiss<CR>', { desc = 'Dismiss Noice' })

vim.keymap.set({ 'n' }, '<leader>e', '<cmd>Oil<CR>')
vim.keymap.set({ 'n' }, '<leader>o', '<C-w>v')
vim.keymap.set({ 'n' }, '<leader>cn', '<cmd>cnext<CR>')
vim.keymap.set({ 'n' }, '<leader>cp', '<cmd>cprev<CR>')

vim.keymap.set('n', '<C-d>', '<C-d>zz')
vim.keymap.set('n', '<C-u>', '<C-u>zz')

vim.keymap.set('x', '<leader>p', [["_dP]])
