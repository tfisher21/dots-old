if !exists('g:loaded_telescope') | finish | endif

nnoremap  <silent> <C-p> <cmd>lua require('telescope.builtin').find_files()<cr>
nnoremap  <silent> <C-g> <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap <silent> \\ <cmd>Telescope buffers<cr>
nnoremap <silent> ;; <cmd>Telescope help_tags<cr>

lua <<EOF
local telescope = require('telescope')
local actions = require('telescope.actions')

telescope.setup {
  defaults = {
    mappings = {
      n = {
        ["q"] = actions.close -- when a menu pops up, press q to close in normal mode. Thanks hectron!

      }
    }
  },
  extensions = {
    fzf = {
      fuzzy = true,                    -- false will only do exact matching
      override_generic_sorter = true,  -- override the generic sorter
      override_file_sorter = true,     -- override the file sorter
      case_mode = "smart_case",        -- or "ignore_case" or "respect_case"
               -- the default case_mode is "smart_case"
    }
  }
}
telescope.load_extension('fzf')
EOF

