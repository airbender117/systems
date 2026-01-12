
local persistence = require("persistence")

vim.keymap.set("n", "<leader>ws", function()
  persistence.save()
end, { desc = "Save session" })

-- Restore session for current dir
vim.keymap.set("n", "<leader>wr", function()
  persistence.load()
end, { desc = "Restore session (cwd)" })

-- Restore last session (global)
vim.keymap.set("n", "<leader>wl", function()
  persistence.load({ last = true })
end, { desc = "Restore last session" })

-- Delete session for current dir
vim.keymap.set("n", "<leader>wd", function()
  persistence.stop()
end, { desc = "Delete session" })
