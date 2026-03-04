require("config.lazy")
require("plugins.fzf")
require("config.options")
require("plugins.treesitter")
require('lualine').setup {
	options = { theme = 'auto' },	
	sections = {
		lualine_x = {'buffers', 'fileformat','filetype'}
	}
}
vim.opt.termguicolors = true
require("plugins.bufferline")
vim.cmd('colorscheme gruvbox')
vim.keymap.set("", "<Space>", "<Nop>")
vim.g.maplocalleader = " "
vim.g.mapleader = " "
vim.lsp.enable('pyright')
vim.lsp.enable('clangd')
vim.keymap.set('i','jj','<Esc>',{noremap = true})

vim.api.nvim_create_autocmd("FileType", {
    pattern = "c",
    callback = function()
        vim.api.nvim_buf_set_keymap(0, "n", "<Leader>c", ":w<CR>:!gcc %:t -o %:t|:!.\\%:t<CR>", {
            noremap = true,
            silent = true,
            desc = "Compile and Run C Code"
        })
    end,
})

