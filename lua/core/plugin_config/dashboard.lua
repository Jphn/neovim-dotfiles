local db = require("dashboard")

db.custom_center = {
	{
		icon = "  ",
		desc = "Find  File                             ",
		action = "Telescope find_files",
		shortcut = "CTRL + p",
	},
	{
		icon = "  ",
		desc = "File Browser                            ",
		action = "NvimTreeFindFileToggle",
		shortcut = "SPACE e",
	},
}
