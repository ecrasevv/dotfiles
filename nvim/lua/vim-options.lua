vim.cmd("set expandtab")
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4")
vim.cmd("set termguicolors")
vim.cmd("set relativenumber")
vim.cmd('filetype plugin on')
vim.cmd('syntax on')
vim.cmd('set nocompatible')
vim.cmd('set cursorline')
vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
-- netrw options
vim.g.netrw_winsize = 30
-- cursor options 
vim.api.nvim_set_hl(0, "Cursor", { fg = "black", bg = "red" })
vim.api.nvim_set_hl(0, "iCursor", { fg = "white", bg = "red" })
vim.opt.guicursor = {
    "n:block-Cursor",
    "v:block-Cursor",
    "c:block-Cursor",
    "i:block-iCursor",
}

