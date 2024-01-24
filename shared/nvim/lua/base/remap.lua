-- KEY BINDINGS

require("mapx").setup({ global = "force" })

-- Utils

-- Move selected lines up/down
vnoremap("J", ":m '>+1<CR>gv=gv")
vnoremap("K", ":m '<-2<CR>gv=gv")

-- Keep cursor same place while scrolling
nnoremap("<C-d>", "<C-d>zz")
nnoremap("<C-u>", "<C-u>zz")

-- Keep search term in middle
nnoremap("n", "nzz")
nnoremap("N", "Nzz")

-- Replace without losing clipboard
xnoremap("<leader>p", '"_dP')

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
nnoremap("<leader>fw", function()
	require("telescope.builtin").grep_string({ search = vim.fn.input("Grep >") })
end, "silent", "Grep Text")

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

-- ChatGPT

nnoremap("<leader>ce", ":ChatGPT<CR>", "silent", "Open ChatGPT")
nnoremap("<leader>ct", ":ChatGPTActAs<CR>", "silent", "Open ChatGPT As")

-- Github Copilot

inoremap("C-a", ":copilot#Accept('<CR>')", "silent", "Copilot Accept")

-- Trouble

nnoremap("<leader>xx", "<cmd>TroubleToggle<cr>", "silent", "Trouble Toggle")
nnoremap("<leader>xw", "<cmd>Trouble lsp_workspace_diagnostics<cr>", "silent", "Trouble Workspace Diagnostics")
nnoremap("<leader>xd", "<cmd>Trouble lsp_document_diagnostics<cr>", "silent", "Trouble Document Diagnostics")
nnoremap("<leader>xl", "<cmd>Trouble loclist<cr>", "silent", "Trouble Loclist")
nnoremap("<leader>xq", "<cmd>Trouble quickfix<cr>", "silent", "Trouble Quickfix")
