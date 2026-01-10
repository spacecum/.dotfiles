return {
	{
		"sphamba/smear-cursor.nvim",
		opts = {
			stiffness = 0.8,
			trailing_stiffness = 0.5,
			distance_stop_animation = 0.5
		}
	},

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

	{
		'nvim-mini/mini.indentscope',
		version = '*',
		config = function ()
			require('mini.indentscope').setup({
				symbol = '▏',
				options = { try_as_border = true }
			})
		end,
	},
}
