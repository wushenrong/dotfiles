-- SPDX-FileCopyrightText: 2024 Samuel Wu
--
-- SPDX-License-Identifier: 0BSD

-- Create auto command group
local function augroup(name)
  return vim.api.nvim_create_augroup(name, { clear = true })
end

-- Disable colorcolumn for certain file types
vim.api.nvim_create_autocmd({ "FileType" }, {
  group = augroup("disable_colorcolumn"),
  pattern = { "help" },
  callback = function()
    vim.opt_local.columnlines = 0
  end,
})
