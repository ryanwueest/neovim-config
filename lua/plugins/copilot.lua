-- Copilot: enable inline suggestions (ghost text) and the panel
return {
  {
    "zbirenbaum/copilot.lua",
    event = "InsertEnter",
    config = function()
      require("copilot").setup {
        suggestion = {
          enabled = true,
          auto_trigger = true,
          keymap = {
            accept = "<C-a>",
            next = "<C-]>",
            prev = "<C-[>",
            dismiss = "<C-d>",
          },
        },
        panel = {
          enabled = true,
          keymap = {
            toggle = "<leader>ac",
            open = "<leader>ac",
            accept = "<CR>",
            refresh = "r",
            jump_prev = "<C-k>",
            jump_next = "<C-j>",
          },
        },
        -- enable for all filetypes by default; add exclusions here if needed
        filetypes = {},
      }
    end,
  },
}
