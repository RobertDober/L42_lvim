-- local dbg = require("debugger")
-- dbg.auto_where = 2

vim.g.l42_lvim_loaded = "from plugin/init.lua"
print("L42Lvim loaded.....")

local function next_tab()
  vim.cmd('tabnext')
end

local function prev_tab()
  vim.cmd('tabprevious')
end

local function to_win(dir)
  vim.keymap.set('n', ';' .. dir, function() 
     vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes("<C-W>", true, false, true), "n", true)
     vim.api.nvim_feedkeys(dir, "n", false)
   end
end

vim.keymap.set('n', ';n', next_tab)
vim.keymap.set('n', ';p', prev_tab)
vim.keymap.set('n', ';h', to_win('h'))
vim.keymap.set('n', ';l', '<C-W>l')
vim.keymap.set('n', ';k', '<C-W>k')
vim.keymap.set('n', ';j', '<C-W>j')
vim.keymap.set('n', ';q', ':q<cr>')
vim.keymap.set('i', '$$$', function()
 vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes("<Esc>", true, false, true), "n", true)
end)
-- SPDX-License-Identifier: AGPL-3.0-or-later


