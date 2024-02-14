-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local Util = require("lazyvim.util")
local map = Util.safe_keymap_set
-- Move to window using the <ctrl> hjkl keys
map("n", "<C-Left>", "<C-w>h", { desc = "Go to left window", remap = true })
map("n", "<C-Down>", "<C-w>j", { desc = "Go to lower window", remap = true })
map("n", "<C-Up>", "<C-w>k", { desc = "Go to upper window", remap = true })
map("n", "<C-Right>", "<C-w>l", { desc = "Go to right window", remap = true })

-- Resize window using <ctrl> arrow keys
map("n", "<C-k>", "<cmd>resize +2<cr>", { desc = "Increase window height" })
map("n", "<C-j>", "<cmd>resize -2<cr>", { desc = "Decrease window height" })
map("n", "<C-h>", "<cmd>vertical resize -2<cr>", { desc = "Decrease window width" })
map("n", "<C-l>", "<cmd>vertical resize +2<cr>", { desc = "Increase window width" })

-- Move Lines
map("n", "<A-Down>", "<cmd>m .+1<cr>==", { desc = "Move down" })
map("n", "<A-Up>", "<cmd>m .-2<cr>==", { desc = "Move up" })
map("i", "<A-Down>", "<esc><cmd>m .+1<cr>==gi", { desc = "Move down" })
map("i", "<A-Up>", "<esc><cmd>m .-2<cr>==gi", { desc = "Move up" })
map("v", "<A-Down>", ":m '>+1<cr>gv=gv", { desc = "Move down" })
map("v", "<A-Up>", ":m '<-2<cr>gv=gv", { desc = "Move up" })

-- ToggleTerm
map("n", "<C-\\>", "<cmd>ToggleTerm direction=horizontal<cr>", { desc = "Toggle Terminal" })
map("t", "<C-\\>", "<cmd>ToggleTerm direction=horizontal<cr>", { desc = "Toggle Terminal" })

map("n", "<leader>Fc", "<cmd>Telescope flutter commands<cr>", { desc = "Open Flutter Commans" })
map("n", "<leader>Fd", "<cmd>FlutterDevices<cr>", { desc = "Flutter Devices" })
map("n", "<leader>Fe", "<cmd>FlutterEmulators<cr>", { desc = "Flutter Emulators" })
map("n", "<leader>Fr", "<cmd>FlutterReload<cr>", { desc = "Hot Reload App" })
map("n", "<leader>FR", "<cmd>FlutterRestart<cr>", { desc = "Hot Restart app" })
map("n", "<leader>Fq", "<cmd>FlutterQuit<cr>", { desc = "Quit running application" })
map("n", "<leader>Fv", "<cmd>Telescope flutter fvm<cr>", { desc = "Flutter version" })
