-- local map = vim.keymap.set
--  map('n','0','^')
vim.g.mapleader = " "

vim.keymap.set('i','jk','<Esc>',{noremap=true,silent=true})
vim.keymap.set("n", "<leader>pv", function()
  vim.notify("Just press <leader>e", vim.log.levels.INFO)
end, { desc = "Hint: use <leader>e instead" })

vim.keymap.set('n', '<leader>-', ':split<CR>', { noremap = true, silent = true })
-- Normal mode remaps
--
local opts = { noremap = true, silent = true }


 vim.keymap.set('n', '<leader>w', ':w<CR>', opts)   -- save buffer
 vim.keymap.set('n', '<leader>q', ':q<CR>', opts)   -- quit buffer vim.keymap.set('n', '<leader>Q', ':q!<CR>', opts)  -- force quit vim.keymap.set('n', '<leader>bd', ':bd<CR>', opts)    -- delete/close current buffer
 vim.keymap.set('n', '<leader>bn', ':bnext<CR>', opts) -- next buffer
 vim.keymap.set('n', '<leader>bp', ':bprevious<CR>', opts) -- previous buffer
 vim.keymap.set('n', '<leader>bo', ':%bd|e#|bd#<CR>', opts) -- close other buffers



 vim.keymap.set("v","J",":m '>+1<CR>gv=gv")
 vim.keymap.set("v","K",":m '>-2<CR>gv=gv")

 vim.keymap.set("n","n", "nzzzv")
 vim.keymap.set("n","N", "Nzzzv")

 vim.keymap.set("n","<leader>y","\"+y")
 vim.keymap.set("v","<leader>y","\"+y")
 vim.keymap.set("n","<leader>Y","\"+Y")





  
 vim.keymap.set("n","<leader>x","<cmd>!chmod +x %<CR>", {silent = true})

vim.keymap.set("n", "<leader>of", ":s/\\(# ]*_/\\1/ | s/ / /g<cr>")
vim.keymap.set("n", "<leader>on", ":ObsidianTemplate note<cr> :lua vim.cmd([[1,/^\\S/s/^\\n\\{1,}//]])<cr>")
vim.keymap.set("n", "<leader>odd", ":!rm '%:p'<cr>:bd<cr>")
