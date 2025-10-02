return {
	'nvim-lualine/lualine.nvim',
	config = function ()
		require('lualine').setup({
			options = {
				globalstatus = true,
			},

			tabline = {
				lualine_a = { 'mode' },
				lualine_b = {'filename'},
				lualine_y = {'branch','diff','diagnostics'},
			},

			events = {
            'WinEnter',
            'BufEnter',
            'BufWritePost',
            'SessionLoadPost',
            'FileChangedShellPost',
            'VimResized',
            'Filetype',
            'ModeChanged',
			},

			sections = {},
			inactive_sections = {},
		})
	end
}
