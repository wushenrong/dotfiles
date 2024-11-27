-- SPDX-FileCopyrightText: 2024 Samuel Wu
--
-- SPDX-License-Identifier: 0BSD

-- Create Autocmd Group
local function augroup(name)
  return vim.api.nvim_create_augroup(name, { clear = true })
end

-- Highlight on yank
vim.api.nvim_create_autocmd("TextYankPost", {
  group = augroup("highlight_yank"),
  callback = function()
    (vim.hl or vim.highlight).on_yank()
  end,
})
