-- LSP Config

local nvim_lsp = require("lspconfig")
local saga = require("lspsaga")
local protocol = require("vim.lsp.protocol")
local null_ls = require("null-ls")
local toggleLSP = require("toggle_lsp_diagnostics")
local lsp_installer = require("nvim-lsp-installer")

-- LSP Installer
lsp_installer.setup({
	automatic_installation = true,
	ui = {
		icons = {
			server_installed = "✓",
			server_pending = "➜",
			server_uninstalled = "✗",
		},
	},
})

-- Use an on_attach function to only map the following keys
-- after the language server attaches to the current buffer
local on_attach = function(client, bufnr)
	local function buf_set_keymap(...)
		vim.api.nvim_buf_set_keymap(bufnr, ...)
	end

	local function buf_set_option(...)
		vim.api.nvim_buf_set_option(bufnr, ...)
	end

	-- Enable completion triggered by <c-x><c-o>
	buf_set_option("omnifunc", "v:lua.vim.lsp.omnifunc")

	--- Mappings
	local opts = { noremap = true, silent = true }
	buf_set_keymap("n", "gh", "<cmd>lua require('lspsaga.provider').lsp_finder()<CR>", opts)
	buf_set_keymap("n", "K", "<cmd>lua require('lspsaga.hover').render_hover_doc()<CR>", opts)

	-- Navigate and preview
	buf_set_keymap("n", "gs", "<cmd>lua require('lspsaga.signaturehelp').signature_help()<CR>", opts)
	buf_set_keymap("n", "gd", "<cmd>lua require('lspsaga.provider').preview_definition()<CR>", opts)
	buf_set_keymap("n", "gD", "<cmd>lua vim.lsp.buf.definition()<CR>", opts)
	buf_set_keymap("n", "gr", "<cmd>lua require('lspsaga.rename').rename()<CR>", opts)

	-- View diagnostics
	buf_set_keymap("n", "<space>e", "<cmd>lua require('lspsaga.diagnostic').show_line_diagnostics()<CR>", opts)
	buf_set_keymap("n", "[d", "<cmd>lua require('lspsaga.diagnostic').lsp_jump_diagnostic_prev()<CR>", opts)
	buf_set_keymap("n", "]d", "<cmd>lua require('lspsaga.diagnostic').lsp_jump_diagnostic_next()<CR>", opts)

	-- Code Actions
	buf_set_keymap("n", "ga", ":Lspsaga code_action<CR>", opts)

	-- formatting
	if client.resolved_capabilities.document_formatting then
		vim.cmd("autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_sync()")
	end
end

-- COMP integration

-- Setup lspconfig for comp
local capabilities = require("cmp_nvim_lsp").update_capabilities(protocol.make_client_capabilities())

-- Typescript
nvim_lsp.tsserver.setup({
	capabilities = capabilities, -- For comp, completion integration
	on_attach = function(client, bufnr)
		client.resolved_capabilities.document_formatting = false
		client.resolved_capabilities.document_range_formatting = false

		local ts_utils = require("nvim-lsp-ts-utils")
		ts_utils.setup({})
		ts_utils.setup_client(client)

		on_attach(client, bufnr)
	end,
})

-- Python
nvim_lsp.pyright.setup({
	capabilities = capabilities, -- For comp, completion integration
	on_attach = on_attach,
})

-- Lua
nvim_lsp.sumneko_lua.setup({
	capabilities = capabilities, -- For comp, completion integration
	on_attach = function(client, bufnr)
		client.resolved_capabilities.document_formatting = false
		client.resolved_capabilities.document_range_formatting = false

		on_attach(client, bufnr)
	end,
	settings = {
		Lua = {
			diagnostics = {
				globals = { "vim", "nnoremap", "packer_bootstrap" },
			},
		},
	},
})

-- CSS

nvim_lsp.cssls.setup({
	capabilities = capabilities, -- For comp, completion integration
	filetypes = { "css" },
	on_attach = on_attach,
})

-- Clojure

nvim_lsp.clojure_lsp.setup({
	capabilities = capabilities, -- For comp, completion integration
	on_attach = on_attach,
})

-- Prisma

nvim_lsp.prismals.setup({
	capabilities = capabilities, -- For comp, completion integration
	on_attach = on_attach,
})

-- Docker

nvim_lsp.dockerls.setup({
	capabilities = capabilities, -- For comp, completion integration
	on_attach = on_attach,
})

-- Null LS : Formatting

local sources = {
	null_ls.builtins.diagnostics.eslint,
	null_ls.builtins.code_actions.eslint,
	null_ls.builtins.formatting.prettier,
	null_ls.builtins.formatting.stylelint,
	null_ls.builtins.formatting.stylua,
}

null_ls.setup({
	sources = sources,
	on_attach = on_attach,
})

-- LSP Saga Config

saga.init_lsp_saga({
	border_style = "round",
	code_action_icon = "",
})

-- Toggle LSP
toggleLSP.init({
	start_on = false,
})
