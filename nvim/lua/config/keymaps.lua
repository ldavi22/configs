-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--
local map = vim.keymap.set

-- Delete previous word with Ctrl+Backspace
vim.keymap.set("i", "<C-BS>", "<C-w>", { noremap = true })
vim.keymap.set("i", "<C-H>", "<C-w>", { noremap = true }) -- fallback for some terminals
map("n", "<C-w><C-.>", "<C-w>>")
map("n", "<C-w><C-,>", "<C-w><")
