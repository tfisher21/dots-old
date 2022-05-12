if !exists("g:loaded_nvim_treesitter")
  finish
endif

lua <<EOF
require('nvim-treesitter.configs').setup{
  -- list of parsers to install, pulled from officially supported list
  -- https://github.com/nvim-treesitter/nvim-treesitter#supported-languages
  ensure_installed = {
    "bash",
    "dockerfile",
    "go",
    "ruby",
    "yaml",
    "json",
    "tsx",
    "html",
    "toml",
    "css",
  },
  ignore_install = {},
  highlight = {
    enable = true,
    disable = {},
  },
  indent = {
    enable = true,
    disable = {},
  },

-- I believe this set's parsing expectations for js file to typescript. Keeping commented for now.
-- local parser_config = require "nvim-treesitter.parsers".get_parser_configs()
-- parser_config.tsx.filetype_to_parsername = { "javascript", "typescript.tsx" }
}
EOF
