local status_ok, treesitter = pcall(require, "nvim-treesitter.configs")
if not status_ok then
	return
end

treesitter.setup({
	highlight = {
		enable = true,
	},
	indent = { enable = true },
	autotag = { enable = true },
	ensure_installed = {
		"dockerfile",
		"gitignore",
		"go",
		"graphql",
		"json",
		"javascript",
		"lua",
		"markdown",
		"ruby",
		"tsx",
		"typescript",
		"vim",
	},
	auto_install = true,
})
