-- vim.opt.background = "light"
-- =========================================
-- Leader key
-- =========================================
vim.g.mapleader = " "
vim.g.maplocalleader = " "
-- =========================================
-- Savings
-- =========================================
local keymap = vim.keymap.set
-- Save file with Ctrl+s
keymap("n", "<C-s>", "<cmd>w<CR>", { desc = "Save file" })
-- Save file in insert mode and continue inserting
keymap("i", "<C-s>", "<Esc><cmd>w<CR>a", { desc = "Save file" })
-- Quit current window/file with <leader>qq
keymap("n", "<leader>qq", "<cmd>q<CR>", { desc = "Quit window" })
-- =========================================
-- Do not copy on some actions
-- =========================================
vim.keymap.set("x", "p", [["_dP]], {desc = "Paste over selection without losing yanked text"})
vim.keymap.set({"n", "v"}, "<leader>d", [["_d]], {desc = "Delete without yanking"})
vim.keymap.set("n", "<Esc>", ":nohl<CR>", {desc = "Clear search highlighting", silent = true})
-- =========================================
-- Selection Movement
-- =========================================
vim.keymap.set("v", "<", "<gv", { desc = "Unident and keep selection" }) 
vim.keymap.set("v", ">", ">gv", { desc = "Indent and keep selection" })
vim.keymap.set("v", "<C-n>", ":m '>+1<CR>gv=gv", { desc = "Moves line down in visual selection" })
vim.keymap.set("v", "<C-p>", ":m '<-2<CR>gv=gv", { desc = "Moves lines up in visual selection" })
-- =========================================
-- Centered Movements and Appends
-- =========================================
vim.keymap.set({"n", "v"}, "J", "mzJ`z", { desc = "Join lines without moving cursor" })
vim.keymap.set("n", "<C-u>", "<C-u>zz", { desc = "Move up in buffer with cursor centered" })
vim.keymap.set("n", "<C-d>", "<C-d>zz", { desc = "Move down in buffer with cursor centered" })
vim.keymap.set("n", "n", "nzzzv", { desc = "Next search result cursor centered" })
vim.keymap.set("n", "N", "Nzzzv", { desc = "Next search result cursor centered" })
-- =========================================
-- Advanced Keymaps
-- =========================================
vim.keymap.set("n", "<leader>S", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], { desc = "Replace word cursor is on globally" })
vim.keymap.set("n", "<leader>U", function()
    vim.cmd.packadd("nvim.undotree")
    require("undotree").open()
end, { desc = "Toggle Builtin Undotree" })
-- =========================================
-- Moviment Between Windows and Tabs
-- =========================================
vim.keymap.set("n", "<C-h>", "<C-w>h", { desc = "Move to left window" })
vim.keymap.set("n", "<C-j>", "<C-w>j", { desc = "Move to window below" })
vim.keymap.set("n", "<C-k>", "<C-w>k", { desc = "Move to window above" })
vim.keymap.set("n", "<C-l>", "<C-w>l", { desc = "Move to right window" })
vim.keymap.set("n", "L", "<Cmd>BufferLineCycleNext<CR>")
vim.keymap.set("n", "H", "<Cmd>BufferLineCyclePrev<CR>")
vim.keymap.set("n", "<leader>bd", ":bd<CR>")
-- =========================================
-- Close the entire Neovim
-- =========================================
vim.keymap.set("n", "ZZ", "<Cmd>wqa<CR>", { desc = "Save all files and quit Neovim", })
vim.keymap.set("n", "ZQ", "<Cmd>qa!<CR>", { desc = "Quit Neovim without saving", })
