return {
  { 'nvim-lua/plenary.nvim', name = 'plenary' },
  {
    'nvim-telescope/telescope.nvim',
    event = 'VeryLazy',
    dependencies = {
      'plenary',
    },
    keys = {
      { '<leader>ff', '<cmd>Telescope find_files<cr>', desc = '[F]ind [F]iles' },
      { '<leader>flg', '<cmd>Telescope live_grep<cr>', desc = '[F]ind [G]rep' },
      { '<leader>fgf', '<cmd>Telescope git_files<cr>', desc = '[F]ind [G]it [F]iles' },
      { '<leader>fgs', '<cmd>Telescope grep_string<cr>', desc = '[F]ind [G]rep current [S]tring' },
      { '<leader>fb', '<cmd>Telescope buffers<cr>', desc = '[F]ind [B]uffers' },
      { '<leader>fh', '<cmd>Telescope help_tags<cr>', desc = '[F]ind [H]elp tags' },
    },
  },
}
