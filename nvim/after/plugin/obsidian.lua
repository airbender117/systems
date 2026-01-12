require('obsidian').setup({
  workspaces = {
    {
      name = "home",
      -- Can be a directory path or a list of paths
       path = "/home/i3user/Obsidian Vault/",
    },
  },
    notes_subdir = "Notes",
    new_notes_location = "notes_subdir",

    disable_frontmatter = true,
    templates = {
      subdir = "templates",
      date_format = "%Y-%m-%d",
      time_format = "%H:%M",
    },
    mappings = {
      action = function()
        return require("obsidian").util.gf_passthrough()
      end,
    },
  
})
