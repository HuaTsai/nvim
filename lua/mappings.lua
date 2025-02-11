require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
map("n", "<leader>ph", "<CMD>Gitsigns preview_hunk<CR>", { desc = "gitsigns preview hunk" })
map("n", "<leader>rh", "<CMD>Gitsigns reset_hunk<CR>", { desc = "gitsigns reset hunk" })

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
