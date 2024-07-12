-- lazy_config.lua (continued)
vim.o.number = true         -- Show line numbers
vim.o.relativenumber = true -- Show relative line numbers

-- turns off that annoying persistent highlighting shit
vim.opt.hlsearch = false

--vim.cmd.colorscheme('adwaita')
vim.opt.swapfile = false

vim.g.mapleader = " " -- Make sure to set `mapleader` before lazy so your mappings are correct
vim.g.maplocalleader = "\\" -- Same for `maplocalleader`

vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true


vim.opt.smartindent = true

vim.opt.wrap = true

-- Make :E open oil
vim.api.nvim_create_user_command(
  'E',
  'Oil',
  { nargs = 0 }
)


vim.cmd [[command! W :w]]


vim.opt.undodir = os.getenv("HOME") .. "/.nvimundo/"
vim.opt.undofile = true
