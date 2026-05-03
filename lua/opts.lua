local opt = vim.opt
opt.number = true
opt.relativenumber = true
opt.termguicolors = true
opt.tabstop = 5
opt.shiftwidth = 5

vim.keymap.set("", "<Space>", "<Nop>")
vim.g.maplocalleader = " "
vim.g.mapleader = " "
vim.keymap.set('i','jj','<Esc>',{noremap = true})
vim.keymap.set('n','<Leader>l',':FzfLua <Enter>',{noremap = true})
-- Normal mode: Move line down/up
vim.keymap.set('n', '<A-j>', ':m .+1<CR>==', { silent = true })
vim.keymap.set('n', '<A-k>', ':m .-2<CR>==', { silent = true })
-- Visual mode: Move selection down/up
vim.keymap.set('v', '<A-j>', ":m '>+1<CR>gv=gv", { silent = true })
vim.keymap.set('v', '<A-k>', ":m '<-2<CR>gv=gv", { silent = true })

vim.api.nvim_create_autocmd("FileType", {
    pattern = "c",
    callback = function()
        vim.api.nvim_buf_set_keymap(0, "n", "<Leader>c", ":w<CR>:!cmake --build bin/<CR>", {
            noremap = true,
            silent = true,
            desc = "Compile C Code"
        })
    end,
})

vim.api.nvim_create_autocmd("FileType", {
    pattern = "c",
    callback = function()
        vim.api.nvim_buf_set_keymap(0, "n", "<Leader>r", ":w<CR>:!./bin/%:t:r<CR>", {
            noremap = true,
            silent = true,
            desc = "Run C Code"
        })
    end,
})

