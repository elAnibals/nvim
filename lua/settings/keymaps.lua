local keymap = vim.api.nvim_set_keymap
local nores = {noremap = true, silent = true}
local nore = {noremap = true, silent = false}

return (function()
	vim.g.mapleader = " "
	--save and quit file
	keymap("n", "<leader>w", "<cmd>w<cr>", nore)
	keymap("n", "<leader>q", "<cmd>q<cr>", nore)
	keymap("n", "<leader>Q", "<cmd>q!<cr>", nore)

	--resize windows splitted
	keymap("n", "<up>", "<cmd>resize +5<cr>", nores)
    	keymap("n", "<down>", "<cmd>resize -5<cr>", nores)
    	keymap("n", "<left>", "<cmd>vertical resize -5<cr>", nores)
    	keymap("n", "<right>", "<cmd>vertical resize +5<cr>", nores)

	--control buffers and split window
	keymap("n","<Tab>","<cmd>bnext<cr>",nore)
	keymap("n","<S-Tab>","<cmd>bprevious<cr>",nore)
	keymap("n","<leader>d","<cmd>bdelete<cr>",nore)
	keymap("n","<leader>vs","<cmd>vsp<cr>",nore)
	keymap("n","<leader>hs","<cmd>sp<cr>",nore)

        --windows navigation
        keymap("n", "<C-h>", "<C-w>h", nores)
        keymap("n", "<C-j>", "<C-w>j", nores)
        keymap("n", "<C-k>", "<C-w>k", nores)
        keymap("n", "<C-l>", "<C-w>l", nores)

        --better indentation
        keymap("v", "<", "<gv", nore)
        keymap("v", ">", ">gv", nore)
	--sustitution
	keymap("n","<leader>s","<cmd>%s/<cr>",nore)
	keymap("v","<leader>s","<cmd>s/<cr>",nore)
	keymap("n","<leader>S","<cmd>nohlsearch<cr>",nore)
	keymap("v","<leader>S","<cmd>nohlsearch<cr>",nore)

	--terminal
	keymap("v","<leader>t","<cmd>split<CR><cmd>ter<CR><cmd>resize 15<CR>",nore)
    	keymap("n","<leader>t","<cmd>split<CR><cmd>ter<CR><cmd>resize 15<CR>",nore)

        --Nvim-Tree
        keymap("n","<leader>b","<cmd>NvimTreeToggle<CR>",nores)
	
end)()
