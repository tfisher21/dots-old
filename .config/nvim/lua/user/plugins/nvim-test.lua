local status_ok, test = pcall(require, "nvim-test")
if not status_ok then
	return
end

test.setup({
	termOpts = {
		direction = "float",
	},
	runners = {
		ruby = "nvim-test.runners.rspec",
	},
})
