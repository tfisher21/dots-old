-- Disable TAB for completion
vim.g.copilot_no_tab_map = true
-- Enable Control-A for completion
vim.cmd([[imap <silent><script><expr> <C-e> copilot#Accept("\<CR>")]])

-- Set color for multiple selections
vim.cmd([[highlight CopilotSuggestion guifg=#555555 ctermfg=8]])
