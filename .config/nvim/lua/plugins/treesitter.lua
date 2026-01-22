return {
	{
		'nvim-treesitter/nvim-treesitter',
		run = ':TSUpdate',  -- Automatically update parsers
		branch = 'master',

		config = function()
			require('nvim-treesitter').setup {
				ensure_installed = {
					"python",
					"bash",
					"http",
					"json",
					"css",
					"sql",
					"cpp",
					"lua",
					"c",
				},
				sync_install = false,
				auto_install = true,
				highlight = { enable = true },
				indent = { enable = true },
			}
		end,

	},
}
