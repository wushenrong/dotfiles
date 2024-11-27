-- SPDX-FileCopyrightText: 2024 Samuel Wu
--
-- SPDX-License-Identifier: 0BSD

-- Clear Search Highlighting
vim.keymap.set(
  'n',
  '<esc>',
  '<cmd>nohlsearch<cr>',
  { desc = "Escape and Clear hlsearch" }
)
