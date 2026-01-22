-- Navigation
vim.api.nvim_set_keymap('n', '<D-h>', '<C-w>h', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<D-j>', '<C-w>j', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<D-k>', '<C-w>k', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<D-l>', '<C-w>l', { noremap = true, silent = true })

-- Save
vim.api.nvim_set_keymap('n', '<leader>w', ':w<CR>', { noremap = true, silent = true })

-- Remove highlight after searching
vim.api.nvim_set_keymap('n', '<C-[>', ':nohl<CR>', { noremap = true, silent = true })

-- Open terminal
vim.api.nvim_set_keymap('n', '<leader>t', ':sp | resize 16 | term<CR>', { noremap = true, silent = true })

-- Exit terminal mode and go to normal mode when pressing Esc
vim.api.nvim_set_keymap('t', '<c-[>', '<C-\\><C-n>', { noremap = true, silent = true })

-- split line
vim.api.nvim_set_keymap('n', '<CR>', 'i<CR><Esc>', { noremap = true, silent = true })

-- make
vim.api.nvim_set_keymap('n', '<leader>r', ':w | split | resize 16 | terminal make <CR>', { noremap = true, silent = true })

-- Searching on browser
vim.keymap.set('v', 'gs', function()
	vim.cmd('normal! "vy')
	local text = vim.fn.getreg('v')
	text = text:gsub("%s+", '%%20')
	vim.fn.jobstart({ 'xdg-open', 'https://www.google.com/search?q=' .. text .. "&udm=14"}, { detach = true })
end, { noremap = true, silent = true })
