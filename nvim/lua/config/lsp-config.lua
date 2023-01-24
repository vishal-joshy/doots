local nvim_lsp = require("lspconfig")
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require("cmp_nvim_lsp").default_capabilities(capabilities)

-- Merge configs
local config = function(_config)
	return vim.tbl_deep_extend("force", {
		on_attach = on_attach,
		capabilities = capabilities,
		flags = {
			debounce_text_changes = 150,
		},
	}, _config or {})
end

nvim_lsp.gopls.setup(config({
	cmd = { "gopls", "serve" },
	settings = {
		gopls = {
			codelenses = {
				generate = true,
			},
			usePlaceholders = true,
			analyses = {
				fieldalignment = true,
				nilness = true,
				shadow = true,
				unusedparams = true,
				unusedwrite = true,
				useany = true,
				unusedvariable = true,
			},
			staticcheck = true,
		},
	},
}))

nvim_lsp.pyright.setup(config())
nvim_lsp.bashls.setup(config())
nvim_lsp.clangd.setup(config())
nvim_lsp.tsserver.setup(config())
nvim_lsp.sumneko_lua.setup(config({
	settings = {
		Lua = {
			runtime = {
				-- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
				version = "LuaJIT",
			},
			diagnostics = {
				-- Get the language server to recognize the `vim` global
				globals = { "vim" },
			},
			workspace = {
				-- Make the server aware of Neovim runtime files
				library = vim.api.nvim_get_runtime_file("", true),
			},
			-- Do not send telemetry data containing a randomized but unique identifier
			telemetry = {
				enable = false,
			},
		},
	},
}))
nvim_lsp.yamlls.setup(config())
nvim_lsp.hls.setup(config())
nvim_lsp.tailwindcss.setup(config())
