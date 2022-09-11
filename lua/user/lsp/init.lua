require("user.lsp.mason")

local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
	return
end

require("user.lsp.handlers").setup()
require "user.lsp.null-ls"


local status_ok, lsp_signature = pcall(require, "lsp_signature")
if not status_ok then
	return
end

lsp_signature.setup()
