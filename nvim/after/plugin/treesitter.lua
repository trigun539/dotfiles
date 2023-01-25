local treesitter = require("nvim-treesitter.configs")

treesitter.setup({
	autotag = {
		enable = true,
	},
	highlight = {
		enable = true,
		disable = {},
	},
	indent = {
		enable = false,
		disable = {},
	},
	ensure_installed = {
		"dot",
		"bash",
		"typescript",
		"tsx",
		"fish",
		"php",
		"json",
		"yaml",
		"html",
		"scss",
		"javascript",
		"css",
		"lua",
		"graphql",
		"clojure",
		"fennel",
		"prisma",
		"dockerfile",
		"python",
		"ruby",
	},
	rainbow = {
		enable = true,
		-- disable = { "jsx", "cpp" }, list of languages you want to disable the plugin for
		extended_mode = false, -- Also highlight non-bracket delimiters like html tags, boolean or table: lang -> boolean
		max_file_lines = nil, -- Do not enable for files with more than n lines, int
		-- colors = {}, -- table of hex strings
		-- termcolors = {} -- table of colour name strings
	},
})

local parser_config = require("nvim-treesitter.parsers").get_parser_configs()

parser_config.tsx.filetype_to_parsername = { "javascript", "typescript.tsx" }
