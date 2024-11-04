
---- LEADER 
-- using space as leader 
vim.g.mapleader = ' '

---- NETRW
-- go back to the files list
vim.api.nvim_set_keymap("n", '<leader>b', ':e.<CR>', { noremap = true, silent = true })

---- MODE CHANGES
-- going normal mode using 'jj' instead of 'esc'
vim.api.nvim_set_keymap("i",'jj','<Esc>', { noremap = true, silent = true })

-- going visual mode using '<leader>v' 
vim.api.nvim_set_keymap("n", '<leader>v', 'v', { noremap = true, silent = true })

---- MOVING CHANGES
-- using <leader>m instead od <shift>$ to go to the end of the line 
vim.api.nvim_set_keymap("n", '<leader>m', '$', { noremap = true, silent = true })
-- using <leader>n instead of <shift>^ to go to the start of the line
vim.api.nvim_set_keymap("n", '<leader>n', '^', { noremap = true, silent = true })
-- same thing but in visual mode
vim.api.nvim_set_keymap("v", '<leader>m', '$', { noremap = true, silent = true })
vim.api.nvim_set_keymap("v", '<leader>n', '^', { noremap = true, silent = true })
-- <C-d> <C-u> always in the middle
vim.api.nvim_set_keymap("n", '<C-d>', '<C-d>zz', { noremap = true, silent = true})
vim.api.nvim_set_keymap("n", '<C-u>', '<C-u>zz', { noremap = true, silent = true})

---- COOL MOVING CHANGES 
-- move a line or a block of lines up and down in visual mode
vim.api.nvim_set_keymap("v", "J", ":m '>+1<CR>gv=gv", { noremap = true, silent = true})
vim.api.nvim_set_keymap("v", "K", ":m '<-2<CR>gv=gv", { noremap = true, silent = true})

---- VIMWIKI UTILS ----
-- go to a specific file 
vim.api.nvim_set_keymap('n', '<leader>g', ":VimwikiGoto<CR>", { noremap = true, silent = true })

-- MarkdownPreview of the file
vim.api.nvim_set_keymap('n', '<leader>mm', ":MarkdownPreview<CR>", { noremap = true, silent = true})

---- MARKS ----
-- :load remap
vim.api.nvim_set_keymap('n', '<leader>l', ":load<CR>", { noremap = true, silent = true})

-- :mkview
vim.api.nvim_set_keymap('n', '<leader>k', ":mkview<CR>", { noremap = true, silent = true})


