return {
  {
    'kdheepak/lazygit.nvim',
    dependencies = {
      'plenary',
    },
    keys = {
      { '<leader>lg', '<cmd>LazyGit<cr>', desc = '[L]azy [G]it' },
    },
  },
  {
    'lewis6991/gitsigns.nvim',
    event = { 'BufReadPost', 'BufNewFile', 'BufWritePre' },
    keys = {
      { '<leader>gsb', '<cmd>Gitsigns toggle_current_line_blame<cr>', desc = '[G]it [S]igns [B]lame' },
      { '<leader>gss', '<cmd>Gitsigns toggle_signs<cr>', desc = '[G]it [S]igns [S]igns' },
      { '<leader>gsl', '<cmd>Gitsigns toggle_linehl<cr>', desc = '[G]it [S]igns [L]inehl' },
      { '<leader>gsw', '<cmd>Gitsigns toggle_word_diff<cr>', desc = '[G]it [S]igns [W]ord_diff' },
    },
    opts = {
      signs = {
        add = { text = '+' },
        change = { text = '~' },
        delete = { text = '-' },
        topdelete = { text = '‾' },
        changedelete = { text = '~' },
        untracked = { text = '┆' },
      },
      signcolumn = true,
      numhl = false,
      linehl = false,
      word_diff = false,
      watch_gitdir = {
        follow_files = true,
      },
      auto_attach = true,
      attach_to_untracked = true,
      current_line_blame = false,
      current_line_blame_opts = {
        virt_text = true,
        virt_text_pos = 'right_align', -- 'eol' | 'overlay' | 'right_align'
        delay = 1000,
        ignore_whitespace = false,
        virt_text_priority = 100,
      },
      current_line_blame_formatter = '<author>, <author_time:%Y-%m-%d> - <summary>',
      sign_priority = 6,
      update_debounce = 100,
      status_formatter = nil,
      max_file_length = 40000,
      preview_config = {
        border = 'single',
        style = 'minimal',
        relative = 'cursor',
        row = 0,
        col = 1,
      },
      yadm = {
        enable = false,
      },
    },
  },
}
