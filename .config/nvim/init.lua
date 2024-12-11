vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.opt.termguicolors = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.wo.number = true
vim.o.showmode = false
require("config.lazy")
vim.api.nvim_create_autocmd("VimEnter", {
    callback = function()
        vim.cmd("NvimTreeOpen")  -- Use the command to open the tree
    end,
})
