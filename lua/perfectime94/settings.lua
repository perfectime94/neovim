local g = vim.g
local k = vim.keymap

g.mapleader = ' '
g.maplocalleader = ' '

k.set('n', '<leader>pv', vim.cmd.Ex)
