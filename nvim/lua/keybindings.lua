-- KEY BINDINGS

require("mapx").setup({ global = true })

-- Telescope
nnoremap("<leader>ff", "<cmd>lua require('telescope.builtin').find_files({hidden = true})<CR>", "silent", "Files")
nnoremap("<leader>fg", "<cmd>lua require('telescope.builtin').git_files()<CR>", "silent", "Git Files")
nnoremap("<leader>fb", ":Telescope file_browser<CR>", "silent", "File Browser")
nnoremap("<leader>f/", "<cmd>lua require('telescope.builtin').buffers()<CR>", "silent", "Buffers")
nnoremap(
	"<leader>fz",
	"<cmd>lua require('telescope.builtin').current_buffer_fuzzy_find()<CR>",
	"silent",
	"Find in buffer"
)
nnoremap("<leader>ft", "<cmd>lua require('telescope.builtin').help_tags()<CR>", "silent", "Help Tags")
nnoremap("<leader>fs", "<cmd>lua require('telescope.builtin').grep_string()<CR>", "silent", "Grep String")
nnoremap("<leader>fr", "<cmd>lua require('telescope.builtin').live_grep()<CR>", "silent", "Live Grep")
nnoremap("<leader>fx", "<cmd>lua require('telescope-config').search_dotfiles()<CR>", "silent", "Search dotfiles")
nnoremap("<leader>fd", "<cmd>lua require('telescope-config').git_branches()<CR>", "silent", "Git Branches")
nnoremap("<leader>fx", "<cmd>lua require('telescope-config').dir_grep()<CR>", "silent", "Grep in Dir")

-- Nvim Tree
nnoremap("<C-e>", ":NvimTreeToggle<CR>", "silent", "Open File Browser")
nnoremap("<C-h>", ":NvimTreeFindFile<CR>", "silent", "Open at file location")

-- Splits
nnoremap("<leader>|", ":vsplit<CR>", "silent", "Split vertically")
nnoremap("<leader>-", ":split<CR>", "silent", "Split horizontally")

-- Git
nnoremap("<leader>gs", ":G<CR>", "silent", "Git status")
nnoremap("<leader>gc", ":Git commit<CR>", "silent", "Git commit")
nnoremap("<leader>gp", ":Git push<CR>", "silent", "Git commit")

-- LSP

-- LSP: Saga
nnoremap("<leader>ke", ":Lspsaga show_line_diagnostics<CR>", "silent", "LSP Show Line Diagnostics")
nnoremap("<leader>ka", ":Lspsaga code_action<CR>", "silent", "LSP Code Action")
nnoremap("<leader>ki", ":TSLspOrganize<CR>", "silent", "LSP Organize Imports")

-- LSP: Trouble
nnoremap("<leader>kx", ":TroubleToggle<CR>", "silent", "Trouble Toggle")
nnoremap("<leader>kw", ":TroubleToggle workspace_diagnostics<CR>", "silent", "LSP Trouble Toggle Workspace Diagnostics")
nnoremap("<leader>kd", ":TroubleToggle document_diagnostics<CR>", "silent", "LSP Trouble Toggle Document Diagnostics")
nnoremap("<leader>kq", ":TroubleToggle quickfix<CR>", "silent", "LSP Trouble Quickfix")
nnoremap("<leader>kl", ":TroubleToggle loclist<CR>", "silent", "LSP Trouble Quickfix")

-- LSP: Toggle
nnoremap("<leader>kt", ":ToggleDiag<CR>", "silent", "LSP Toggle Diagnostics")

-- Conjure
nnoremap("<leader>lc", ":ConjureConnect<CR>", "silent", "Clojure Connect")
nnoremap("<leader>lv", ":ConjureLogVSplit<CR>", "silent", "Clojure Log VSplit")
nnoremap("<leader>leb", ":ConjureEvalBuf<CR>", "silent", "Clojure Eval Buffer")
nnoremap("<leader>lee", ":ConjureEvalCurrentForm<CR>", "silent", "Clojure Eval Current Form")
nnoremap("<leader>ler", ":ConjureEvalRootForm<CR>", "silent", "Clojure Eval Root")
vnoremap("<leader>lE", ":ConjureEvalVisual<CR>", "silent", "Clojure Eval Visual")

-- ChatGPT

nnoremap("<leader>ce", ":ChatGPT<CR>", "silent", "Open ChatGPT")
nnoremap("<leader>ct", ":ChatGPTActAs<CR>", "silent", "Open ChatGPT As")
