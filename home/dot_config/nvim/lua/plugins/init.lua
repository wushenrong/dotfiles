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
    opts = {
      options = { theme = 'vscode' },
    },
    extensions = { 'neo-tree', 'lazy' },
  },
  {
    'akinsho/bufferline.nvim',
    event = 'VeryLazy',
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
        'lua',
        'luadoc',
        'markdown',
        'markdown_inline',
        'query',
        'vim',
        'vimdoc'
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
  },

  -- Install FZF Support
  {
    "ibhagwan/fzf-lua",
    dependencies = { { "junegunn/fzf", build = "./install --bin" } },
    cmd = "FzfLua",
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
        highlight = {
          'CursorColumn',
          'Whitespace',
        },
        char = '',
      },
      whitespace = {
        highlight = {
          'CursorColumn',
          'Whitespace',
        },
        remove_blankline_trail = false,
      },
      scope = { enabled = false },
    },
  },
  {
    'HiPhish/rainbow-delimiters.nvim',
    main = 'rainbow-delimiters.setup',
    event = { 'BufReadPost', 'BufWritePost', 'BufNewFile' },
  },

  -- Install Start Time Analyzer
  {
    'dstein64/vim-startuptime',
    cmd = 'StartupTime',
  },

  -- Install NerdFont/DevIcons And Other Required Plugins
  'nvim-tree/nvim-web-devicons',
  'nvim-lua/plenary.nvim',
  'MunifTanjim/nui.nvim',
}
