return {
	'nvim-treesitter/nvim-treesitter',
	run = ':TSUpdate',  -- Automatically update parsers

	config = function()
		require('nvim-treesitter.configs').setup {
			--[[
				ensure_installed = {
					"lua",
					"python",
					"c",
					"bash",
					"http",
					"json",
					"css",
					"sql",
					"cpp"
				},
				--]]
			sync_install = false,
			auto_install = true,
			highlight = { enable = true },
			indent = { enable = true },
		}
	end,
}
