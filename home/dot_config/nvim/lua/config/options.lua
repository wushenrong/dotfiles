-- SPDX-FileCopyrightText: 2024 Samuel Wu
--
-- SPDX-License-Identifier: 0BSD

-- Set Leader Keys
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Disable Reading Settings From Mode Lines
vim.opt.modeline = false

-- Enable Line Numbers
vim.opt.number = true
vim.opt.relativenumber = true

-- Disable Ruler
vim.opt.ruler = false

-- Show The Sign Column
vim.opt.signcolumn = 'yes'

-- Do Not Show The Current Mode
vim.opt.showmode = false

-- Set Indentation
vim.opt.expandtab = true

vim.opt.tabstop = 4
vim.opt.shiftwidth = 4

vim.opt.breakindent = true
vim.opt.smartindent = true

-- Disable Soft Wrapping
vim.opt.wrap = false
vim.opt.linebreak = true

-- Show Cursor Lines
vim.opt.cursorline = true
vim.opt.cursorcolumn = true

-- Conceal Details
vim.opt.conceallevel = 2

-- Set Search Settings
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Enable Virtual Editing
vim.opt.virtualedit = 'all'

-- Set Column Lines
vim.opt.colorcolumn = { 79, 80, 100, 120 }

-- Show Whitespace
vim.opt.list = true
vim.opt.listchars = {
  eol = '↓',
  tab = '→ ',
  space = '·',
  trail = '-',
  extends = '>',
  precedes = '<',
  nbsp = '␣',
}

-- Set Wildmenu Mode
vim.opt.wildmode = 'longest:full,full'

-- Enable Mouse Support
vim.opt.mouse = 'a'

-- Enable Smooth Scrolling
vim.opt.smoothscroll = true

-- Set Title For Terminals
vim.opt.title = true

-- Shortening The Update Time
vim.opt.updatetime = 100

-- Setting How Panes Should Be Split
vim.opt.splitright = true
vim.opt.splitbelow = true

-- Disable Backups
vim.opt.backup = false
vim.opt.writebackup = false
vim.opt.swapfile = false
