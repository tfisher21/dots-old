
-- folke/tokyonight.nvim --
vim.g.tokyonight_style = "night"
vim.g.tokyonight_italic_functions = true
--

-- Mofiqul/dracula.nvim --
local dracula = require("dracula")
dracula.setup({ italic_comment = true })
--

-- catppuccin/nvim --
local catppuccin = require("catppuccin")
vim.g.catppuccin_flavour = "frappe" -- latte, frappe, macchiato, mocha
catppuccin.setup({ term_colors = true })
--

-- set colorscheme
local colorscheme = "tokyonight" -- { "tokyonight", "dracula", "catppuccin", "kanagawa" }
local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
  vim.notify("colorscheme " .. colorscheme .. " not found!")
  return
end
