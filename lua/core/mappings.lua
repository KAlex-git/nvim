vim.g.mapleader = " "

-- NeoTree
vim.keymap.set('n', '<leader>e', ':Neotree float reveal<CR>')
vim.keymap.set('n', '<leader>o', ':Neotree float git_status<CR>')

-- Navigation
vim.keymap.set('n', '<c-k>', ':wincmd k<CR>')
vim.keymap.set('n', '<c-j>', ':wincmd j<CR>')
vim.keymap.set('n', '<c-h>', ':wincmd h<CR>')
vim.keymap.set('n', '<c-l>', ':wincmd l<CR>')
vim.keymap.set('n', '<leader>/', ':CommentToggle<CR>')

-- Splits
vim.keymap.set('n', '|', ':vsplit<CR>')
vim.keymap.set('n', '\\', ':split<CR>')

-- Other
vim.keymap.set('n', '<leader>w', ':w<CR>')
vim.keymap.set('n', '<leader>x', ':BufferLinePickClose<CR>')
vim.keymap.set('i', 'jj', '<Esc>')
vim.keymap.set('n', '<leader>h', ':nohlsearch<CR>')
vim.keymap.set('n', '<leader>pl', ':Lazy<cr>')
vim.keymap.set('n', '<leader>pu', ':Lazy update<cr>')
vim.keymap.set('n', '<leader>ps', ':Lazy sync<cr>')
vim.keymap.set('n', '<leader>h', ':Mason<cr>')

-- Misc
-- Start scripts (Luke Smith)
vim.keymap.set('n', ',c', ':w! | !compiler "<c-r>%"<CR>')
vim.keymap.set('n', ',w', ':w! | !opout <c-r>%<CR><CR>')
-- Sed Command
vim.keymap.set('n', 'S', ':%s//g<Left><Left>')
-- map('n', 'S', ':%s/\\V/g<Left><Left>', { noremap = true })
vim.keymap.set("n", "_", ":%s/\\s/_/g<CR>")

-- Select all file
vim.keymap.set('n', '<C-a>', 'ggVG') -- set Ctrl+a as select all
-- for read and prose write
vim.keymap.set('n', '<S-j>', 'gqG') -- set Ctrl+a as select all

-- Tabs
vim.keymap.set('n', '<Tab>', ':BufferLineCycleNext<CR>')
vim.keymap.set('n', '<s-Tab>', ':BufferLineCyclePrev<CR>')

-- Terminal
vim.keymap.set('n', '<leader>tf', ':ToggleTerm direction=float<CR>')
vim.keymap.set('n', '<leader>th', ':ToggleTerm direction=horizontal<CR>')
vim.keymap.set('n', '<leader>tv', ':ToggleTerm direction=vertical size=40<CR>')
