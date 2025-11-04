vim.diagnostic.config({
	virtual_lines = true,
	underline = true,
	update_in_insert = false,
	severity_sort = true,
	float = {
		border = "rounded",
		source = true,
	},
	signs = {
		text = {
			[vim.diagnostic.severity.ERROR] = " ",
			[vim.diagnostic.severity.WARN] = " ",
			[vim.diagnostic.severity.INFO] = " ",
			[vim.diagnostic.severity.HINT] = " ",
		},
		numhl = {
			[vim.diagnostic.severity.ERROR] = "ErrorMsg",
			[vim.diagnostic.severity.WARN] = "WarningMsg",
		},
	},
})

-- LSP Keymaps --
local keymap = vim.keymap.set
local opts = {
	noremap = true,
	silent = true,
}
vim.api.nvim_create_autocmd("LspAttach", {
	group = vim.api.nvim_create_augroup("UserLspConfig", {}),
	callback = function(ev)
		keymap("n", "<leader>gD", "<cmd> lua vim.buf.definition()<CR>", opts)
		keymap("n", "<leader>gS", "<cmd>vsplit | lua vim.lsp.buf.definition()<CR>", opts)
		keymap("n", "<leader>ca", "<cmd>lua vim.lsp.buf.code_action()<CR>", opts)
		keymap("n", "<leader>rn", "<cmd>lua vim.buf.rename()<CR>", opts)
		keymap("n", "K", "<cmd>lua vim.lsp.buf.hover()<CR>", opts)
	end,
})
