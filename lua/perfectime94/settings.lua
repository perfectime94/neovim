local g = vim.g
local k = vim.keymap

g.mapleader = ' '
g.maplocalleader = ' '

k.set('n', '<leader>pv', vim.cmd.Ex)

-- Move text easily
k.set('v', 'J', ':m \'>+1<CR>gv=gv')
k.set('v', 'K', ':m \'<-2<CR>gv=gv')

-- Easy way to exit insert mode
k.set('i', '<C-c>', '<Esc>')

-- Format file
k.set('n', '<leader>f', vim.lsp.buf.format)
