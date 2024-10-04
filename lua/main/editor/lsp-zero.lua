---@diagnostic disable: unused-local

return {
	"VonHeikemen/lsp-zero.nvim",
	event = "BufRead",
	dependencies = {
		{ "williamboman/mason.nvim" },
		{ "williamboman/mason-lspconfig.nvim" },
		{
			"neovim/nvim-lspconfig",
			event = {
				"BufReadPre",
				"BufNewFile",
			},
		},
		{ "hrsh7th/cmp-nvim-lsp", event = "InsertEnter" },
		{ "hrsh7th/nvim-cmp", event = "InsertEnter" },
		{ "L3MON4D3/LuaSnip", event = "InsertCharPre" },
	},

	config = function()
		local lsp_zero = require("lsp-zero")
		vim.keymap.set("n", "<leader>lm", "<cmd>Mason<cr>")

		local lsp_attach = function(client, bufnr)
			local opts = { buffer = bufnr }
			local map = vim.keymap.set

			map("n", "K", "<cmd>lua vim.lsp.buf.hover()<cr>", opts)
			map("n", "gd", "<cmd>lua vim.lsp.buf.definition()<cr>", opts)
			map("n", "gD", "<cmd>lua vim.lsp.buf.declaration()<cr>", opts)
			map("n", "gi", "<cmd>lua vim.lsp.buf.implementation()<cr>", opts)
			map("n", "go", "<cmd>lua vim.lsp.buf.type_definition()<cr>", opts)
			map("n", "gr", "<cmd>lua vim.lsp.buf.references()<cr>", opts)
			map("n", "gs", "<cmd>lua vim.lsp.buf.signature_help()<cr>", opts)
			map("n", "<F2>", "<cmd>lua vim.lsp.buf.rename()<cr>", opts)
			map({ "n", "x" }, "<F3>", "<cmd>lua vim.lsp.buf.format({async = true})<cr>", opts)
			map("n", "<leader>ca", "<cmd>lua vim.lsp.buf.code_action()<cr>", opts)
			map("n", "<leader>li", "<cmd>LspInfo<cr>")
		end

		lsp_zero.extend_lspconfig({
			sign_text = true,
			lsp_attach = lsp_attach,
			capabilities = require("cmp_nvim_lsp").default_capabilities(),
		})

		require("mason").setup({})
		require("mason-lspconfig").setup({
			handlers = {
				function(server_name)
					require("lspconfig")[server_name].setup({})
				end,
			},
		})

		require("lspconfig").lua_ls.setup({
			settings = {
				Lua = {
					diagnostics = {
						globals = { "vim" },
					},
					telemetry = {
						enable = false,
					},
				},
			},
		})

		local cmp = require("cmp")

		local cmp_action = lsp_zero.cmp_action()

		cmp.setup({
			sources = {
				{ name = "nvim_lsp" },
				{ name = "luasnip" },
			},

			mapping = cmp.mapping.preset.insert({
				["<C-j>"] = cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Insert }),
				["<C-k>"] = cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Insert }),
				["<Tab>"] = cmp.mapping.confirm({ select = true }),
			}),
			snippet = {
				expand = function(args)
					require("luasnip").lsp_expand(args.body)
				end,
			},
		})
	end,
}
