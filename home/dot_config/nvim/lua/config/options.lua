-- SPDX-FileCopyrightText: 2024 Samuel Wu
--
-- SPDX-License-Identifier: 0BSD

-- Disable modeline commands
vim.opt.modeline = false

-- Set tabs to four spaces
vim.opt.tabstop = 4

-- Enable virtual editing
vim.opt.virtualedit = "all"

-- Show max columns
vim.opt.colorcolumn = { 79, 80, 100, 120 }

-- Show all whitespace
vim.opt.listchars = {
  eol = "↓",
  tab = "→ ",
  space = "·",
  trail = "-",
  extends = ">",
  precedes = "<",
  nbsp = "␣",
}

-- Set terminal title
vim.opt.title = true
