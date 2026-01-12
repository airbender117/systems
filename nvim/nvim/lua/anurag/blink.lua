
-- minimal blink.cmp setup
local blink = require("blink.cmp")

blink.setup {
  keymap = { preset = "default" },        -- default keymaps
  completion = { documentation = { auto_show = false } },
  sources = { default = { "lsp", "buffer", "path", "snippets" } },
  fuzzy = { implementation = "lua" }      -- fallback to Lua, no Rust needed
}
