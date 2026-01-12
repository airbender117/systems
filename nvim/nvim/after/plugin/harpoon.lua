local mark = require("harpoon.mark")
local ui = require("harpoon.ui")

vim.keymap.set("n","<leader>a",mark.add_file)
vim.keymap.set("n","<C-e>",ui.toggle_quick_menu)
vim.keymap.set("n","<C-q>",function () ui.nav_file(1) end)
vim.keymap.set("n","<C-r>",function () ui.nav_file(2) end)
vim.keymap.set("n","<C-t>",function () ui.nav_file(3) end)
vim.keymap.set("n","<C-y>",function () ui.nav_file(4) end)
vim.keymap.set("n","<C-u>",function () ui.nav_file(5) end)
vim.keymap.set("n","<C-[>",function() ui.nav_next() end, {noremap=true,silent=true})
vim.keymap.set("n","<C-]>",function() ui.nav_prev() end)
vim.keymap.set("n", "<leader>X", function()
    mark.clear_all()
end, {noremap=true, silent=true})
for i = 1, 9 do
    vim.keymap.set("n", "<leader>x"..i, function()
        mark.rm_file(i)
    end, {noremap=true, silent=true})
end

