local status_ok, wk = pcall(require, "which-key")
if not status_ok then return end

wk.setup()

-- Telekasten --
wk.register({
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
