local g = vim.g

g.dashboard_default_executive = "telescope"
-- g.dashboard_preview_command = "cat"
-- g.dashboard_preview_pipeline = "lolcat"
-- g.dashboard_preview_file = "~/.config/nvim/dashboard-img.txt"
-- g.dashboard_preview_file_height = 12
-- g.dashboard_preview_file_width = 80

g.dashboard_custom_header = {
	[[███╗   ██╗ ███████╗ ██████╗  ██╗   ██╗ ██╗ ███╗   ███╗]],
	[[████╗  ██║ ██╔════╝██╔═══██╗ ██║   ██║ ██║ ████╗ ████║]],
	[[██╔██╗ ██║ █████╗  ██║   ██║ ██║   ██║ ██║ ██╔████╔██║]],
	[[██║╚██╗██║ ██╔══╝  ██║   ██║ ╚██╗ ██╔╝ ██║ ██║╚██╔╝██║]],
	[[██║ ╚████║ ███████╗╚██████╔╝  ╚████╔╝  ██║ ██║ ╚═╝ ██║]],
	[[╚═╝  ╚═══╝ ╚══════╝ ╚═════╝    ╚═══╝   ╚═╝ ╚═╝     ╚═╝]],
}

g.dashboard_custom_footer = {}

g.dashboard_custom_shortcut = {
	find_file = "LEADER f f",
	new_file = "LEADER f n",
	find_word = "LEADER f w",
	last_session = "LEADER f w",
	find_history = "LEADER f w",
	book_marks = "LEADER f w",
	change_colorscheme = "LEADER f w",
}
