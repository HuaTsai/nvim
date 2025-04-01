require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
map("n", "<leader>ph", "<CMD>Gitsigns preview_hunk<CR>", { desc = "gitsigns preview hunk" })
map("n", "<leader>rh", "<CMD>Gitsigns reset_hunk<CR>", { desc = "gitsigns reset hunk" })
map("n", "<leader>tn", ":tabnew<CR>", { desc = "tab create new tab" })
map({ "n", "v" }, "<RightMouse>", function()
  vim.cmd.exec '"normal! \\<RightMouse>"'
  local options = vim.bo.ft == "NvimTree" and "nvimtree" or "default"
  require("menu").open(options, { mouse = true })
end)

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
