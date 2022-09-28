
-- folke/tokyonight.nvim --
local colorscheme = "tokyonight"
vim.g.tokyonight_style = "night"
vim.g.tokyonight_italic_functions = true
--

-- Mofiqul/dracula.nvim --
-- local colorscheme = "dracula"
-- local dracula = require(colorscheme)
-- dracula.setup({ italic_comment = true })
--

-- catppuccin/nvim --
-- local colorscheme = "catppuccin"
-- vim.g.catppuccin_flavour = "frappe" -- latte, frappe, macchiato, mocha
-- local catppuccin = require(colorscheme)
-- catppuccin.setup({ term_colors = true })
--

-- set colorscheme
local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
  vim.notify("colorscheme " .. colorscheme .. " not found!")
  return
end
