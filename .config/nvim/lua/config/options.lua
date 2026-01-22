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

-- cursor line
--vim.o.cursorline = true

-- split window
vim.o.splitright = true
vim.o.splitbelow = true

-- Theme
vim.cmd[[colorscheme cyberdream]]

-- Removing ~
vim.opt.fillchars:append { eob = " " }

--vim.o.signcolumn = 'no'

-- undo across session
vim.o.undofile = true

-- Removing space below statusline
vim.o.cmdheight = 0

-- Wordwrap
vim.o.linebreak = true

-- Minimum number of lines to keep above and below the cursor
vim.o.scrolloff = 10
