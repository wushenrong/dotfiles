-- SPDX-FileCopyrightText: 2024 Samuel Wu
--
-- SPDX-License-Identifier: 0BSD

return {
  -- Set Keybinding Groups
  {
    'folke/which-key.nvim',
    event = 'VeryLazy',
    opts = {
      spec = {
        { '<leader>c', group = '[C]ode', mode = { 'n', 'x' } },
        { '<leader>d', group = '[D]ocument' },
        { '<leader>r', group = '[R]ename' },
        { '<leader>s', group = '[S]earch' },
        { '<leader>w', group = '[W]orkspace' },
        { '<leader>t', group = '[T]oggle' },
        { '<leader>h', group = 'Git [H]unk', mode = { 'n', 'v' } },
      },
    },
  },

  -- Set keybindings for gitsigns
  {
    'lewis6991/gitsigns.nvim',
    opts = {
      on_attach = function(bufnr)
        local gitsigns = require('gitsigns')

        local function map(mode, l, r, opts)
          opts = opts or {}
          opts.buffer = bufnr
          vim.keymap.set(mode, l, r, opts)
        end

        -- Navigation
        map('n', ']c', function()
          if vim.wo.diff then
            vim.cmd.normal({ ']c', bang = true })
          else
            gitsigns.nav_hunk('next')
          end
        end, { desc = 'Jump to next git [c]hange' })

        map('n', '[c', function()
          if vim.wo.diff then
            vim.cmd.normal({ '[c', bang = true })
          else
            gitsigns.nav_hunk('prev')
          end
        end, { desc = 'Jump to previous git [c]hange' })

        -- Actions
        -- visual mode
        map('v', '<leader>hs', function()
          gitsigns.stage_hunk({ vim.fn.line('.'), vim.fn.line('v') })
        end, { desc = 'stage git hunk' })
        map('v', '<leader>hr', function()
          gitsigns.reset_hunk({ vim.fn.line('.'), vim.fn.line('v') })
        end, { desc = 'reset git hunk' })
        -- normal mode
        map(
          'n',
          '<leader>hs',
          gitsigns.stage_hunk,
          { desc = 'git [s]tage hunk' }
        )
        map(
          'n',
          '<leader>hr',
          gitsigns.reset_hunk,
          { desc = 'git [r]eset hunk' }
        )
        map(
          'n',
          '<leader>hS',
          gitsigns.stage_buffer,
          { desc = 'git [S]tage buffer' }
        )
        map(
          'n',
          '<leader>hu',
          gitsigns.undo_stage_hunk,
          { desc = 'git [u]ndo stage hunk' }
        )
        map(
          'n',
          '<leader>hR',
          gitsigns.reset_buffer,
          { desc = 'git [R]eset buffer' }
        )
        map(
          'n',
          '<leader>hp',
          gitsigns.preview_hunk,
          { desc = 'git [p]review hunk' }
        )
        map(
          'n',
          '<leader>hb',
          gitsigns.blame_line,
          { desc = 'git [b]lame line' }
        )
        map(
          'n',
          '<leader>hd',
          gitsigns.diffthis,
          { desc = 'git [d]iff against index' }
        )
        map('n', '<leader>hD', function()
          gitsigns.diffthis('@')
        end, { desc = 'git [D]iff against last commit' })
        -- Toggles
        map(
          'n',
          '<leader>tb',
          gitsigns.toggle_current_line_blame,
          { desc = '[T]oggle git show [b]lame line' }
        )
        map(
          'n',
          '<leader>tD',
          gitsigns.toggle_deleted,
          { desc = '[T]oggle git show [D]eleted' }
        )
      end,
    },
  },

  -- Set keybindings for fzf-lua
  {
    'ibhagwan/fzf-lua',
    keys = function()
      local FzfLua = require('fzf-lua')
      return {
        {
          '<leader>sh',
          FzfLua.help_tags,
          { desc = '[S]earch [H]elp' },
        },
        {
          '<leader>sk',
          FzfLua.keymaps,
          { desc = '[S]earch [K]eymaps' },
        },
        {
          '<leader>sf',
          FzfLua.files,
          { desc = '[S]earch [F]iles' },
        },
        {
          '<leader>ss',
          FzfLua.builtins,
          { desc = '[S]earch [S]elect FzfLua' },
        },
        {
          '<leader>sw',
          FzfLua.cword,
          { desc = '[S]earch Current [W]ord' },
        },
        {
          '<leader>sg',
          FzfLua.live_grep,
          { desc = '[S]earch By [G]rep' },
        },
        {
          '<leader>sd',
          FzfLua.diagnostics_workspace,
          { desc = '[S]earch [D]iagnostics' },
        },
        {
          '<leader>sr',
          FzfLua.resume,
          { desc = '[S]earch [R]esume' },
        },
        {
          '<leader>s.',
          FzfLua.oldfiles,
          { desc = '[S]earch Recent Files ("." for repeat)' },
        },
        {
          '<leader><leader>',
          FzfLua.buffers,
          { desc = '[ ] Find existing buffers' },
        },
        {
          '<leader>/',
          FzfLua.grep_curbuf,
          { desc = '[/] Fuzzily search in current buffer' },
        },
        {
          '<leader>s/',
          FzfLua.lines,
          { desc = '[S]earch [/] in Open Files' },
        },
        {
          '<leader>sn',
          function()
            FzfLua.files({ cwd = vim.fn.stdpath('config') })
          end,
          { desc = '[S]earch [N]eovim files' },
        },
      }
    end,
  },
}
