require "nvchad.mappings"

local map = vim.keymap.set
local opts = { noremap = true, silent = true }

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jj", "<ESC>")
map({ "n", "i" }, "<C-s>", "<cmd>w<CR>", { desc = "Save" })
map("n", "<leader>ss", "<cmd>w<CR>", { desc = "Save" })
map("n", "<A-s>", "<cmd>wa<CR>", { desc = "Save All" })
map("n", "<leader>sa", "<cmd>wa<CR>", { desc = "Save All" })
map("n", "<leader>qq", "<cmd>qa<CR>", { desc = "Quit" })
map("v", "p", '"_dP', opts)
map("n", "dd", '"_dd', opts)
map("n", "dr", "dd", opts)

map("n", "<leader>cx", function()
  require("nvchad.tabufline").closeAllBufs()
end, { desc = "Close All Buffers" })
map("i", "<C-g>", function()
  return vim.fn["codeium#Accept"]()
end, { expr = true })

-- move text up and down
map("v", "J", ":m .+1<CR>==", opts)
map("v", "K", ":m .-2<CR>==", opts)
map("x", "J", ":move '>+1<CR>gv-gv", opts)
map("x", "K", ":move '<-2<CR>gv-gv", opts)

-- better indent handling
map("v", "<", "<gv", opts)
map("v", ">", ">gv", opts)

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

-- Increment/decrement
map("n", "+", "<C-a>")
map("n", "-", "<C-x>")

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

-- Diagnostics
map("n", "<leader>dn", function()
  vim.diagnostic.goto_next()
end, { desc = "Next Diagnostic", silent = true, noremap = true })
