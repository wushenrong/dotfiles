-- SPDX-FileCopyrightText: 2024 Samuel Wu
--
-- SPDX-License-Identifier: 0BSD

return {
  -- Install VSCode colorscheme
  {
    "Mofiqul/vscode.nvim",
    opts = {
      transparent = true,
      italic_comments = true,
      underline_links = true,
      disable_nvimtree_bg = true,
    },
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "vscode",
    },
  },

  -- Disable other colorschemes
  { "folke/tokyonight.nvim", enable = false },
  { "catppuccin/nvim", enable = false },
}
