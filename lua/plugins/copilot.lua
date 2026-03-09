-- Copilot: enable inline suggestions (ghost text) and the panel
return {
  {
    "zbirenbaum/copilot.lua",
    event = "InsertEnter",
    config = function()
      require("copilot").setup({
        -- Disable inline suggestion (ghost text); use blink.cmp for dropdown completion
        suggestion = {
          enabled = false,
          auto_trigger = false,
          keymap = {},
        },
        -- Disable the side panel UI; user prefers dropdown menu via blink.cmp
        panel = {
          enabled = false,
          keymap = {},
        },
        -- enable for all filetypes by default; add exclusions here if needed
        filetypes = {},
      })
    end,
  },
}
