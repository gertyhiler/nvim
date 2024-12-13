-- This file needs to have same structure as nvconfig.lua
-- https://github.com/NvChad/ui/blob/v3.0/lua/nvconfig.lua
-- Please read that file to know all available options :(

---@type ChadrcConfig
local M = {}

M.base46 = {
  theme = "onenord",
  -- transparency = true,
  hl_override = {
    Comment = { italic = false, fg = "#5f816a" },
    ["@comment"] = { italic = false, fg = "#5f816a" },
  },
}

M.ui = {
  statusline = {
    theme = "default",
    separator_style = "round",
    order = { "mode", "file", "git", "%=", "lsp_msg", "%=", "diagnostics", "lsp", "cursor", "cwd" },
  },

  -- nvdash = {
  --   load_on_startup = true,

  --   header = {
  --     "                            ",
  --     "     ▄▄         ▄ ▄▄▄▄▄▄▄   ",
  --     "   ▄▀███▄     ▄██ █████▀    ",
  --     "   ██▄▀███▄   ███           ",
  --     "   ███  ▀███▄ ███           ",
  --     "   ███    ▀██ ███           ",
  --     "   ███      ▀ ███           ",
  --     "   ▀██ █████▄▀█▀▄██████▄    ",
  --     "     ▀ ▀▀▀▀▀▀▀ ▀▀▀▀▀▀▀▀▀▀   ",
  --     "                            ",
  --     "     Powered By  eovim    ",
  --     "     Andrew Korobka         ",
  --   },

  --   buttons = {
  --     { txt = "  Find File", keys = "Spc f f", cmd = "Telescope find_files" },
  --     { txt = "  Recent Files", keys = "Spc f o", cmd = "Telescope oldfiles" },
  --     -- more... check nvconfig.lua file for full list of buttons
  --     {
  --       txt = function()
  --         local stats = require("lazy").stats()
  --         local ms = math.floor(stats.startuptime) .. " ms"
  --         return "  Loaded " .. stats.loaded .. "/" .. stats.count .. " plugins in " .. ms
  --       end,
  --       hl = "NvDashFooter",
  --       no_gap = true,
  --     },
  --   },
  -- },
}

M.nvdash = {
  load_on_startup = true,

  header = {
"                                                                                                                       ",
"    ░█████╗░███╗░░██╗██████╗░██████╗░███████╗░██╗░░░░░░░██╗░░░░░░░██╗░░░░░░░██╗███████╗██████╗░░░░██████╗░██╗░░░██╗    ",
"    ██╔══██╗████╗░██║██╔══██╗██╔══██╗██╔════╝░██║░░██╗░░██║░░░░░░░██║░░██╗░░██║██╔════╝██╔══██╗░░░██╔══██╗██║░░░██║    ",
"    ███████║██╔██╗██║██║░░██║██████╔╝█████╗░░░╚██╗████╗██╔╝█████╗░╚██╗████╗██╔╝█████╗░░██████╦╝░░░██████╔╝██║░░░██║    ",
"    ██╔══██║██║╚████║██║░░██║██╔══██╗██╔══╝░░░░████╔═████║░╚════╝░░████╔═████║░██╔══╝░░██╔══██╗░░░██╔══██╗██║░░░██║    ",
"    ██║░░██║██║░╚███║██████╔╝██║░░██║███████╗░░╚██╔╝░╚██╔╝░░░░░░░░░╚██╔╝░╚██╔╝░███████╗██████╦╝██╗██║░░██║╚██████╔╝    ",
"    ╚═╝░░╚═╝╚═╝░░╚══╝╚═════╝░╚═╝░░╚═╝╚══════╝░░░╚═╝░░░╚═╝░░░░░░░░░░░╚═╝░░░╚═╝░░╚══════╝╚═════╝░╚═╝╚═╝░░╚═╝░╚═════╝░    ",
"                                                                                                                       ",
"                                               Powered By  eovim                                                     ",
"                                               Andrew Korobka (AK)                                                     ",
"                                                                                                                       ",
"                                              █▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀█                                                   ",
"                                              █░░╦─╦╔╗╦─╔╗╔╗╔╦╗╔╗░░█                                                   ",
"                                              █░░║║║╠─║─║─║║║║║╠─░░█                                                   ",
"                                              █░░╚╩╝╚╝╚╝╚╝╚╝╩─╩╚╝░░█                                                   ",
"                                              █▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄█                                                   ",
"                                                                                                                       ",
"                                                                                                                       ",
  },
}

return M





