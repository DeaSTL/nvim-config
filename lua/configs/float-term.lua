

local term = require("FTerm.terminal")
vim.cmd("command! -nargs=0 TermExec lua require('FTerm').exec('')")
vim.cmd("command! -nargs=0 TermExec cmd='zsh' lua require('FTerm').exec(cmd)")

-- Keybinding

vim.keymap.set("n", "<leader>t", "<CMD>lua require('FTerm').toggle()<CR>")
vim.keymap.set("t", "<Esc>", "<C-\\><C-n><CMD>lua require('FTerm').toggle()<CR>")

