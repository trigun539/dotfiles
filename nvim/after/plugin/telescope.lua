local telescope = require("telescope")
local actions = require("telescope.actions")

telescope.setup({
	defaults = {
		file_sorter = require("telescope.sorters").get_fzy_sorter,
		file_ignore_patterns = { "node_modules", ".git", "cache", "dist", "coverage" },
		mappings = {
			n = {
				["q"] = actions.close,
			},
		},
	},
	extensions = {
		fzy_native = {
			fuzzy = true, -- false will only do exact matching
			override_generic_sorter = true,
			override_file_sorter = true,
			case_mode = "smart_case", -- or "ignore_case" or "respect_case"
			-- the default case_mode is "smart_case"
			-- hidden = true,                   -- Show hidden files
			-- fuzzy = true,                    -- false will only do exact matching
			-- override_generic_sorter = true,  -- override the generic sorter
			-- override_file_sorter = true,     -- override the file sorter
			-- case_mode = "smart_case",        -- or "ignore_case" or "respect_case"
			--                                  -- the default case_mode is "smart_case"
		},
	},
})

telescope.load_extension("fzy_native")
telescope.load_extension("file_browser")

-- Dotfiles Shortcut
local M = {}

M.search_dotfiles = function()
	require("telescope.builtin").find_files({
		prompt_title = "< Dotfiles >",
		cwd = "~/dotfiles",
	})
end

M.git_branches = function()
	require("telescope.builtin").git_branches({
		attach_mappings = function(prompt_bufnr, map)
			map("i", "C-d", actions.git_delete_branch)
			map("n", "C-d", actions.git_delete_branch)
			return true
		end,
	})
end

-- Live grep and then filter by file name
M.dir_grep = function()
	vim.ui.input({ prompt = "Search text: " }, function(input)
		require("telescope.builtin.files").grep_string({
			search = input,
		})
	end)
end

return M
