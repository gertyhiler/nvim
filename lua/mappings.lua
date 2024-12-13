require "nvchad.mappings"

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jj", "<ESC>")
map({ "n", "i" }, "<C-s>", "<cmd>w<CR>", { desc = "Save" })
map("n", "<A-s>", "<cmd>wa<CR>", { desc = "Save All" })
map("n", "<leader>qq", "<cmd>qa<CR>", { desc = "Quit" })
map("n", "<leader>cx", function()
  require("nvchad.tabufline").closeAllBufs()
end, { desc = "Close All Buffers" })
map("i", "<C-g>", function()
  return vim.fn["codeium#Accept"]()
end, { expr = true })

-- Terminal
map("n", "<C-]>", function()
  require("nvchad.term").toggle { pos = "vsp", size = 0.4 }
end, { desc = "Toogle Terminal Vertical" })
map("n", "<C-\\>", function()
  require("nvchad.term").toggle { pos = "sp", size = 0.4 }
end, { desc = "Toogle Terminal Horizontal" })
map("n", "<C-f>", function()
  require("nvchad.term").toggle { pos = "float" }
end, { desc = "Toogle Terminal Float" })
map("t", "<C-]>", function()
  require("nvchad.term").toggle { pos = "vsp" }
end, { desc = "Toogle Terminal Vertical" })
map("t", "<C-\\>", function()
  require("nvchad.term").toggle { pos = "sp" }
end, { desc = "Toogle Terminal Horizontal" })
map("t", "<C-f>", function()
  require("nvchad.term").toggle { pos = "float" }
end, { desc = "Toogle Terminal Float" })

-- hop

local hop = require "hop"
local directions = require("hop.hint").HintDirection

map("", "f", function()
  hop.hint_char1 { direction = directions.AFTER_CURSOR, current_line_only = true }
end, { remap = true })
map("", "F", function()
  hop.hint_char1 { direction = directions.BEFORE_CURSOR, current_line_only = true }
end, { remap = true })
map("", "t", function()
  hop.hint_char1 { direction = directions.AFTER_CURSOR, current_line_only = true, hint_offset = -1 }
end, { remap = true })
map("", "T", function()
  hop.hint_char1 { direction = directions.BEFORE_CURSOR, current_line_only = true, hint_offset = 1 }
end, { remap = true })

-- GIT
map("n", "<leader>gg", "<cmd>LazyGit<CR>", { desc = "Open LazyGit" })

-- Log
map("n", "<leader>cl", function()
  require("logsitter").log()
end, { desc = "Create Console log" })
map("x", "<leader>cl", function()
  require("logsitter").log_visual()
end, { desc = "Create Console log" })
-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

-- Hop
local hop = require "hop"
local directions = require("hop.hint").HintDirection
vim.keymap.set("n", "s", function()
  hop.hint_char1 { direction = directions.AFTER_CURSOR, current_line_only = false }
end, { remap = true })
vim.keymap.set("n", "S", function()
  hop.hint_char1 { direction = directions.BEFORE_CURSOR, current_line_only = false }
end, { remap = true })
