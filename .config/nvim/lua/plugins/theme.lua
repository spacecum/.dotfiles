return {
	{
		"scottmckendry/cyberdream.nvim",
		lazy = false,
		priority = 1000,
		config = function ()
			require("cyberdream").setup({
				transparent = true,
				cache = true,
				saturation = 0.8,
				italic_comments = true,
			})
		end
	},
}
