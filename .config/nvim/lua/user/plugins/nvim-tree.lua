local status_ok, nvim_tree = pcall(require, "nvim-tree")
if not status_ok then
  return
end

-- recommended settings from nvim-tree documentation
vim.g.loaded = 1
vim.g.loaded_netrwPlugin = 1

nvim_tree.setup({
  actions = {
    open_file = {
      window_picker = {
        enable = false,
      }
    }
  }
})
