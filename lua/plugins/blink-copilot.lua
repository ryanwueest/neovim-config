-- Bridge plugin configuration for blink.cmp <-> Copilot
return {
  {
    "giuxtaposition/blink-cmp-copilot",
    -- load on InsertEnter alongside blink.cmp
    event = "InsertEnter",
    dependencies = { "saghen/blink.cmp", "zbirenbaum/copilot.lua" },
    config = function()
      -- The plugin registers itself; no extra setup required here.
      -- Ensure copilot suggestion/panel are disabled (we already did in copilot.lua)
    end,
  },
}
