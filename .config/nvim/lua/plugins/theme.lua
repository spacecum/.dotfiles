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

	{
		'uZer/pywal16.nvim',
		-- for local dev replace with:
		-- dir = '~/your/path/pywal16.nvim',
		config = function()
			vim.cmd.colorscheme("pywal16")
		end,
	},

	{
		"catgoose/nvim-colorizer.lua",
		event = "BufReadPre",
		config = function ()
			require("colorizer").setup({})
		end
	},
}
