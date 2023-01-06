local db = require("dashboard")

db.custom_center = {
  {
    icon = "  ",
    desc = "Find  File                              ",
    action = "Telescope find_files",
    shortcut = "SPC f f",
  },
  {
    icon = "  ",
    desc = "File Browser                            ",
    action = "NvimTreeFindFileToggle",
    shortcut = "SPC f b",
  },
}
