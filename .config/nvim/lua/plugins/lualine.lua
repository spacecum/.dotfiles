return {
	'nvim-lualine/lualine.nvim',
	config = function ()
		vim.o.laststatus = 3 -- Enabling global status line
		require('lualine').setup({
			options = {
				component_separators = { left = '', right = ''},
				section_separators = { left = '', right = ''},
			},
			sections = {
				lualine_a = {
					'mode',
					{
						'macro',
						fmt = function()
							local reg = vim.fn.reg_recording()
							if reg ~= "" then
								return "Recording @" .. reg
							end
							return nil
						end,
						color = { fg = "#ff9e64" },
						draw_empty = false,
					}
				},
			},
		}
		)
	end
}
