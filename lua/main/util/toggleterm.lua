return {
	"akinsho/toggleterm.nvim",
	event = "VeryLazy",
	version = "*",
	config = function()
		require("toggleterm").setup({})
		local map = vim.keymap.set
		map("n", "<leader>nt", "<cmd>ToggleTerm size=15 direction=horizontal<cr>")
	end,
}
