return {
  {
    'nvim-treesitter/nvim-treesitter',
    version = false,
    build = ':TSUpdate',
    event = { 'BufReadPost', 'BufNewFile', 'BufWritePre' },
    dependencies = {
      'nvim-treesitter/nvim-treesitter-textobjects',
    },
    cmd = { 'TSUpdateSync', 'TSUpdate', 'TSInstall' },
    keys = {
      { '<c-space>', desc = 'Increment selection' },
    },
    opts = {
      highlight = { enable = true },
      indent = { enable = true },
      ensure_installed = {
        'html',
        'lua',
        'vimdoc',
	'rust',
      },
      incremental_selection = {
        enable = true,
        keymaps = {
          init_selection = '<C-space>',
          node_incremental = '<C-space>',
          scope_incremental = false,
          node_decremental = '<bs>',
        },
      },
      textobjects = {
        move = {
          enable = true,
          goto_next_start = { [']f'] = '@function.outer', [']c'] = '@class.outer' },
          goto_next_end = { [']F'] = '@function.outer', [']C'] = '@class.outer' },
          goto_previous_start = { ['[f'] = '@function.outer', ['[c'] = '@class.outer' },
          goto_previous_end = { ['[F'] = '@function.outer', ['[C'] = '@class.outer' },
        },
      },
    },
  },
}
