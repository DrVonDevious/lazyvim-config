-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local keymap = vim.keymap

-- Go to next error
keymap.set("n", "<leader>j", function()
  vim.diagnostic.goto_next()
end)

-- Tabs
keymap.set("n", "<tab>", ":tabnext<Return>")
keymap.set("n", "<D-tab>", ":tabprev<Return>")
