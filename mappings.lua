---@type MappingsTable
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter comjand mode", opts = { nowait = true } },
  },
  v = {
    [">"] = { ">gv", "indent" },
  },
  i = {
    -- ["kj"] = { "<ESC>", "escape insert mode", opts = { nowait = true } },
  },
}

-- more keybinds!
M.hop = {
  n = {
    ["<leader>s"] = { "<cmd> HopChar1 <CR>", "type a key and hop to the char" },
    ["<leader>/"] = { "<cmd> HopPattern <CR>", "type a word and hop to the pattern" },
  },
}

M.dap = {
  plugin = true,
  n = {
    ["<leader>db"] = { "<cmd> DapToggleBreakpoint <CR>" },
    ["<leader>dus"] = {
      function()
        local widgets = require "dap.ui.widgets"
        local sidebar = widgets.sidebar(widgets.scopes)
        sidebar.open()
      end,
      "Open debugging sidebar",
    },
  },
}

M.crates = {
  plugin = true,
  n = {
    ["<leader>rcu"] = {
      function()
        require("crates").upgrade_all_crates()
      end,
      "update crates",
    },
  },
}

return M
