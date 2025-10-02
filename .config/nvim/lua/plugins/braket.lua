return {
	{
		'windwp/nvim-autopairs',
		config = true,
		opts = {}
	},

	{
		"abecodes/tabout.nvim",
		lazy = false,
		config = function ()
			require("tabout").setup{}
		end,
	}
}
