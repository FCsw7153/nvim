return {
	"mason-org/mason.nvim",
	event = "VeryLazy",
	dependencies = {
		"neovim/nvim-lspconfig",
		"mason-org/mason-lspconfig.nvim",
	},
	opts = {},
	config = function(_, opts)
		require("mason").setup(opts)
		local registry = require("mason-registry")

		local function setup(name, config)
			local success, package = pcall(registry.get_package, name)
			if success and not package:is_installed() then
				package:install()
			end
			local nvim_lsp = require("mason-lspconfig").get_mappings().package_to_lspconfig[name]
			config.capabilities = require("blink.cmp").get_lsp_capabilities()
			config.on_attach = function(client)
				client.server_capabilities.documentFormattingProvider = false
			end
			require("lspconfig")[nvim_lsp].setup(config)
		end

		local servers = {
			clangd = {},
			["css-lsp"] = {
				setup = {
					settings = {
						css = {
							validate = true,
							lint = {
								unknownAtRules = "ignore",
							},
						},
						less = {
							validate = true,
							lint = {
								unknownAtRules = "ignore",
							},
						},
						scss = {
							validate = true,
							lint = {
								unknownAtRules = "ignore",
							},
						},
					},
				},
			},
			["lua-language-server"] = {
				settings = {
					Lua = {
						diagnostics = {
							globals = { "vim" },
						},
					},
				},
			},
			pyright = {},
		}
		for server, config in pairs(servers) do
			setup(server, config)
		end
		vim.cmd("LspStart")
	end,
}
