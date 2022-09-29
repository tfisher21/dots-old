local status_ok, wk = pcall(require, "which-key")
if not status_ok then return end

wk.setup()

local opts = { cwd = "~/.config/nvim/lua/user/" }

-- Telekasten --
wk.register({
  c = {
    f = { "<cmd>lua require('telescope.builtin').find_files({cwd = '~/.config/nvim/lua/user' })<cr>", "Find Files" },
    cs = { "<cmd>edit ~/.config/nvim/lua/user/colorscheme.lua<cr>", "Color Schemes" },
    i = { "<cmd>edit ~/.config/nvim/init.lua<cr>", "Init" },
    km = { "<cmd>edit ~/.config/nvim/lua/user/keymaps.lua<cr>", "whichkey" },
    p = { "<cmd>edit ~/.config/nvim/lua/user/plugins.lua<cr>", "Plugins" },
    wk = { "<cmd>edit ~/.config/nvim/lua/user/whichkey.lua<cr>", "whichkey" },
  },
  e = { "<cmd>NvimTreeFindFileToggle<cr>", "NvimTree Toggle" },
  f = {
    name = "Files",
    f = { "<cmd>Telescope find_files<cr>", "Find Files" },
    g = { "<cmd>Telescope live_grep<cr>", "Live Grep" },
    r = { "<cmd>Telescope oldfiles<cr>", "Old Recent Files" },
  },
  n = {
    name = "Telekasten",
    a = { "<cmd>Telekasten show_tags<cr>", "Show Tags" },
    b = { "<cmd>Telekasten show_backlinks<cr>", "Show Backlinks" },
    c = { "<cmd>Telekasten<cr>", "Telekasten" },
    f = { "<cmd>Telekasten find_notes<cr>", "Find Notes" },
    d = { "<cmd>Telekasten search_notes<cr>", "Search Notes" },
    g = { "<cmd>Telekasten follow_link<cr>", "Follow Link" },
    n = { "<cmd>Telekasten new_note<cr>", "New Notes" },
    t = { "<cmd>Telekasten toggle_todo<cr>", "Toggle Todo" },
    y = { "<cmd>Telekasten yank_notelink<cr>", "Yank Notelink" },
    z = { "<cmd>Telekasten find_daily_notes<cr>", "Find Daily Notes" },
  },
}, { prefix = "<leader>" })
