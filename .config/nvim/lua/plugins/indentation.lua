return {
	{
		"lukas-reineke/indent-blankline.nvim",
		main = "ibl",
		opts = {
			scope = { enabled = false },
			indent = {
				char = {"▏"},
			},
		}
	},

	{ 'echasnovski/mini.nvim',
		version = '*',
		config = function ()
			require('mini.indentscope').setup({
				symbol = '▏',
				options = { try_as_border = true }
			})
		end,
	},
}
