local lsp = require("lsp-zero")

lsp.preset("recommended")
lsp.ensure_installed({
	"tsserver",
	"eslint",
	"pylsp",
	"cssls",
	"prismals",
	"dockerls",
	"bashls",
	"jsonls",
	"tailwindcss",
	"cssmodules_ls",
	"graphql",
	"html",
	"marksman",
	"ruby_ls",
	"sqlls",
	"terraformls",
	"lua_ls",
	"jdtls",
})

-- Fix Undefined global 'vim'
lsp.configure("lua_ls", {
	settings = {
		Lua = {
			diagnostics = {
				globals = { "vim", "nnoremap", "packer_bootstrap" },
			},
		},
	},
})

-- Java setup
-- require("lspconfig").jdtls.setup({ cmd = { "jdtls" }, filetypes = { "java" } })

lsp.on_attach(function(client, bufnr)
	local opts = { buffer = bufnr, remap = false }

	vim.keymap.set("n", "gd", function()
		vim.lsp.buf.definition()
	end, opts)
	vim.keymap.set("n", "K", function()
		vim.lsp.buf.hover()
	end, opts)
	vim.keymap.set("n", "<leader>vws", function()
		vim.lsp.buf.workspace_symbol()
	end, opts)
	vim.keymap.set("n", "<leader>vd", function()
		vim.diagnostic.open_float()
	end, opts)
	vim.keymap.set("n", "[d", function()
		vim.diagnostic.goto_next()
	end, opts)
	vim.keymap.set("n", "]d", function()
		vim.diagnostic.goto_prev()
	end, opts)
	vim.keymap.set("n", "<leader>vca", function()
		vim.lsp.buf.code_action()
	end, opts)
	vim.keymap.set("n", "<leader>vrr", function()
		vim.lsp.buf.references()
	end, opts)
	vim.keymap.set("n", "<leader>vrn", function()
		vim.lsp.buf.rename()
	end, opts)
	vim.keymap.set("i", "<C-h>", function()
		vim.lsp.buf.signature_help()
	end, opts)
end)

lsp.format_on_save({
	format_opts = {
		async = false,
		timeout_ms = 10000,
	},
	servers = {
		-- ['lua_ls'] = {'lua'},
		-- ['rust_analyzer'] = {'rust'},
		-- ['tsserver'] = {'typescript', 'javascript', 'typescriptreact'},
		-- if you have a working setup with null-ls
		-- you can specify filetypes it can format.
		["null-ls"] = {
			"javascript",
			"typescript",
			"typescriptreact",
			"lua",
			"rust",
			"css",
			"html",
			"json",
			"yaml",
			"markdown",
			"python",
			"dockerfile",
			"graphql",
			"bash",
			"ruby",
			"sql",
			"terraform",
			"java",
		},
	},
})

lsp.nvim_workspace()
lsp.setup()
