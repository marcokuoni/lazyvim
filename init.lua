-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

-- Only run once on first file load
vim.api.nvim_create_autocmd("BufWinEnter", {
  once = true,
  callback = function()
    local file_dir = vim.fn.expand("%:p:h")
    if vim.fn.isdirectory(file_dir) == 1 then
      vim.cmd("cd " .. vim.fn.fnameescape(file_dir))
    end
  end,
})
