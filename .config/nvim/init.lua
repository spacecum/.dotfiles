require("config.lazy")
require("config.mappings")
require("config.options")
require("config.autocmds")

local lsp = { "pyright", "bashls", "clangd", "cssls", "emmet_ls", "lua_ls", "qmlls" }
for i = 1, #lsp do
	vim.lsp.enable(lsp[i])
end
