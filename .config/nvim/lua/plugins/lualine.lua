return {
	'nvim-lualine/lualine.nvim',
	config = function ()
		require('lualine').setup({
			options = {
				globalstatus = true,
				component_separators = { left = ' ▏', right = ' ▏'},
				section_separators = { left = ' ▏', right = ' ▏'},
			},
			events = {
				'WinEnter',
				'BufEnter',
				'BufWritePost',
				'SessionLoadPost',
				'FileChangedShellPost',
				'VimResized',
				'Filetype',
				'CursorMoved',
				'CursorMovedI',
				'ModeChanged',
				'RecordingLeave',
				'RecordingEnter',
			},
			sections = {
				lualine_a = {
					'mode',
					{
						'macro',
						fmt = function()
							local reg = vim.fn.reg_recording()
							if reg == "" then return nil end
							return "Recording @" .. reg
						end,
						color = { fg = "#ff9e64" },
						draw_empty = false,
					}
				},
			},
		})
	end
}
