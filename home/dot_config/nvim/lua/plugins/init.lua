-- SPDX-FileCopyrightText: 2024 Samuel Wu
--
-- SPDX-License-Identifier: 0BSD

return {
  -- Install Theme
  {
    'Mofiqul/vscode.nvim',
    lazy = false,
    priority = 1000,
    config = function(_, opts)
      require('vscode').setup(opts)
      vim.cmd.colorscheme('vscode')
    end,
    opts = {
      transparent = true,
      italic_comments = true,
      underline_links = true,
    },
  },

  -- Install Better Status Lines
  {
    'nvim-lualine/lualine.nvim',
    event = 'VeryLazy',
    opts = { options = { theme = 'vscode' } },
    extensions = { 'neo-tree', 'lazy' },
  },
  {
    'akinsho/bufferline.nvim',
    event = 'VeryLazy',
    opts = {
      options = {
        offsets = {
          {
            filetype = 'neo-tree',
            text = 'Neo-tree',
            highlight = 'Directory',
            text_align = 'left',
          },
        },
      },
    },
  },

  -- Better Language Support
  {
    'nvim-treesitter/nvim-treesitter',
    dependencies = { 'nvim-treesitter/nvim-treesitter-textobjects' },
    build = ':TSUpdate',
    event = { 'BufReadPost', 'BufWritePost', 'BufNewFile', 'VeryLazy' },
    lazy = vim.fn.argc(-1) == 0,
    cmd = { 'TSUpdateSync', 'TSUpdate', 'TSInstall' },
    main = 'nvim-treesitter.configs',
    opts = {
      ensure_installed = {
        'bash',
        'c',
        'diff',
        'html',
        'json',
        'lua',
        'luadoc',
        'markdown',
        'markdown_inline',
        'query',
        'toml',
        'vim',
        'vimdoc',
        'yaml',
        'xml',
      },
      highlight = { enable = true },
      indent = { enable = true },
    },
  },

  -- Autodetect File Indentation
  {
    'tpope/vim-sleuth',
    event = { 'BufReadPost', 'BufWritePost', 'BufNewFile' },
  },

  -- Install File Manager
  {
    'nvim-neo-tree/neo-tree.nvim',
    cmd = 'Neotree',
    init = function()
      -- FIX: use `autocmd` for lazy-loading neo-tree instead of directly
      -- requiring it, because `cwd` is not set up properly.
      vim.api.nvim_create_autocmd('BufEnter', {
        group = vim.api.nvim_create_augroup(
          'Neotree_start_directory',
          { clear = true }
        ),
        desc = 'Start Neo-tree with directory',
        once = true,
        callback = function()
          if package.loaded['neo-tree'] then
            return
          else
            local stats = vim.uv.fs_stat(vim.fn.argv(0))
            if stats and stats.type == 'directory' then
              require('neo-tree')
            end
          end
        end,
      })
    end,
    opts = {
      sources = { 'filesystem', 'buffers', 'git_status' },
      filesystem = {
        bind_to_cwd = false,
        follow_current_file = { enabled = true },
        use_libuv_file_watcher = true,
      },
    },
  },

  -- Install FZF Support
  {
    'ibhagwan/fzf-lua',
    dependencies = { { 'junegunn/fzf', build = './install --bin' } },
    cmd = 'FzfLua',
    opts = {
      {
        'telescope',
        winopts = { preview = { default = 'bat' } },
        git_icons = true,
      },
    },
  },

  -- Install Git Plugins
  {
    'lewis6991/gitsigns.nvim',
    event = { 'BufReadPost', 'BufWritePost', 'BufNewFile' },
  },

  -- Indent Lines And Rainbow Brackets
  {
    'lukas-reineke/indent-blankline.nvim',
    main = 'ibl',
    event = { 'BufReadPost', 'BufWritePost', 'BufNewFile' },
    opts = {
      indent = {
        highlight = { 'CursorColumn', 'Whitespace' },
        char = '',
      },
      whitespace = {
        highlight = { 'CursorColumn', 'Whitespace' },
        remove_blankline_trail = false,
      },
      scope = { enabled = false },
      exclude = { filetypes = { 'help', 'lazy', 'neo-tree' } },
    },
  },
  {
    'HiPhish/rainbow-delimiters.nvim',
    main = 'rainbow-delimiters.setup',
    event = { 'BufReadPost', 'BufWritePost', 'BufNewFile' },
  },

  -- Install Start Time Analyzer
  { 'dstein64/vim-startuptime', cmd = 'StartupTime' },

  -- Install NerdFont/DevIcons And Other Required Plugins
  'nvim-tree/nvim-web-devicons',
  'nvim-lua/plenary.nvim',
  'MunifTanjim/nui.nvim',
}
