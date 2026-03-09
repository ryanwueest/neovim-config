-- Obsidian.nvim: Note-taking, daily notes, and markdown integration for Neovim
local obsidian_path = "~/Documents/obsidian"

return {
  "obsidian-nvim/obsidian.nvim",
  version = "*",
  lazy = true,
  ft = "markdown",
  dependencies = { "nvim-lua/plenary.nvim" },
  opts = {
    workspaces = {
      {
        name = "Second Brain",
        path = obsidian_path,
      },
    },

    templates = {
      folder = "meta/templates",
      date_format = "YYYY-MM-DD",
      time_format = "HH:mm:ss",
    },

    daily_notes = {
      folder = "fleeting-notes",
      date_format = "YYYY-MM-DD",
      default_tags = { "daily-note" },
      template = "daily-note-template.md",
    },

    -- disable automatic completion initialization when nvim-cmp/blink.cmp aren't installed
    completion = {
      nvim_cmp = false,
      blink = false,
      min_chars = 2,
      create_new = false,
    },

    frontmatter = {
      enabled = false,
    },

    attachments = {
      folder = "meta/assets",
    },

    new_notes_location = "notes_subdir",
    notes_subdir = "inbox",

    ui = {
      enable = false,
    },
  },
  keys = {
    { "<leader>no", "<cmd>cd " .. obsidian_path .. "<cr>", desc = "change directory to obsidian" },
    { "<leader>nn", "<cmd>Obsidian template note-template<cr>", desc = "apply note template" },
    { "<leader>nj", "<cmd>Obsidian template daily-note-template<cr>", desc = "apply daily note template" },
    { "<leader>ns", "<cmd>Obsidian quick_switch<cr>", desc = "search obsidian vault" },
  },
}
