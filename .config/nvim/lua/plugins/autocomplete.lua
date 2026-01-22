return {
	{ 'hrsh7th/cmp-nvim-lsp' },
	{ 'hrsh7th/cmp-buffer' },
	{ 'hrsh7th/cmp-path' },

	{
		"L3MON4D3/LuaSnip",
		{
			"rafamadriz/friendly-snippets",
			"saadparwaiz1/cmp_luasnip"
		},
	},

	{
		'hrsh7th/nvim-cmp',
		config = function ()
			local cmp = require('cmp')
			local cmp_action = require('lsp-zero').cmp_action()
			cmp.setup({
				experimental = {
					ghost_text = true
				},
				window = {
					completion = cmp.config.window.bordered(),
					documentation = cmp.config.window.bordered(),
				},
				snippet = {
					expand = function(args)
						require('luasnip').lsp_expand(args.body)
					end,
				},
				sources = {
					{ name = 'nvim_lsp' },
					{ name = 'buffer' },
					{ name = 'path' },
					{ name = 'luasnip' },
					{ name = 'vim-dadbod-completion' }
				},
				mapping = {
					['<C-j>']  = cmp.mapping.select_next_item(),
					['<C-k>'] = cmp.mapping.select_prev_item(),
					['<C-e>'] = cmp.mapping.abort(),
					['<CR>'] = cmp.mapping.confirm({ select = true }),
					['<C-f>'] = cmp_action.luasnip_jump_forward(),
					['<C-d>'] = cmp_action.luasnip_jump_backward(),
				}
			})
		end
	},

	{
		'windwp/nvim-autopairs',
		config = true,
		opts = {}
	},

	{
		'tpope/vim-surround'
	},

	{
		"abecodes/tabout.nvim",
		lazy = false,
		config = function ()
			require("tabout").setup{}
		end,
	}
}
