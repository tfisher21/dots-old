local configs = require("nvim-treesitter.configs")
configs.setup {
  ensure_installed = "all",
  sync_install = false,
  ignore_install = { "phpdoc" }, -- List of parsers to ignore installing
  highlight = {
    enable = true, -- false will disable the whole extension
    additional_vim_regex_highlighting = true,

  },
  indent = { enable = true, disable = { "yaml" } },
}
