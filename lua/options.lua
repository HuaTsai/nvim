require "nvchad.options"

-- add yours here!

vim.o.rnu = true
vim.api.nvim_create_autocmd("FileType", {
  pattern = "cpp",
  callback = function()
    vim.bo.commentstring = "// %s"
  end,
})
-- o.cursorlineopt ='both' -- to enable cursorline!
