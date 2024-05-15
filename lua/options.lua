vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.splitbelow = true
vim.opt.splitright = true

vim.opt.wrap = false
vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4 -- :help docs explain if shiftwidth is 0, the tabstop is used. So this is to avoid confusion.

vim.opt.clipboard = "unnamedplus" -- syncronizes the system clipboard with Neovim's clipboard.

vim.opt.scrolloff = 999 -- keeps cursor in middle of screen

vim.opt.virtualedit = "block" -- allows visual block mode to extend beyond characters in line

vim.opt.inccommand = "split" -- provides small preview window with %s

vim.opt.ignorecase = true -- ignores case when searching

vim.opt.termguicolors = true -- enables 256-bit colors

