-- Relative line number
vim.o.number = true
vim.o.relativenumber = true

-- Tab size
vim.o.tabstop = 3
vim.o.shiftwidth = 3
vim.o.softtabstop = 3
vim.o.smartindent = true

-- Enable clipboard support
vim.o.clipboard = "unnamedplus"

-- search settings
vim.o.ignorecase = true
vim.o.smartcase = true

-- split window
vim.o.splitright = true
vim.o.splitbelow = true

-- Removing ~
vim.opt.fillchars:append { eob = " " }

-- vim.o.signcolumn = 'yes'

-- undo across session
vim.o.undofile = true

-- Removing space below statusline
-- vim.o.cmdheight = 0

-- Wordwrap
vim.o.linebreak = true

-- Minimum number of lines to keep above and below the cursor
vim.o.scrolloff = 4

-- change the cwd inside of the nvim
vim.o.autochdir = true

-- Remove mode info
vim.o.showmode = false
vim.o.laststatus = 0

-- vim.opt.fillchars:append({
--   horiz = "─",
--   horizup = "┴",
--   horizdown = "┬",
--   vert = "│",
--   vertleft = "┤",
--   vertright = "├",
--   verthoriz = "┼",
-- })
vim.opt.winborder = "rounded"
