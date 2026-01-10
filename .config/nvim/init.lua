require("config.lazy")
require("config.mappings")
require("config.options")

local lsp = { "pyright", "bashls", "clangd", "cssls", "emmet_ls", "lua_ls" }
for i = 1, #lsp do
	vim.lsp.enable(lsp[i])
end
